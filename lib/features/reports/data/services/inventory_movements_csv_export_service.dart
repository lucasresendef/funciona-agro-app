import 'dart:io';
import 'dart:ui' show Rect;

import 'package:dio/dio.dart';
import 'package:field_management_app/core/errors/app_exception.dart';
import 'package:field_management_app/core/network/api_client.dart';
import 'package:field_management_app/features/reports/domain/entities/csv_export_models.dart';
import 'package:file_picker/file_picker.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:path_provider/path_provider.dart';
import 'package:share_plus/share_plus.dart';

final inventoryMovementsCsvExportServiceProvider =
    Provider<InventoryMovementsCsvExportService>((ref) {
      return InventoryMovementsCsvExportService(ref.watch(apiDioProvider));
    });

class InventoryMovementsCsvExportService {
  const InventoryMovementsCsvExportService(this._dio);

  final Dio _dio;

  Future<InventoryMovementsCsvDownloadedFile> downloadCsv(
    InventoryMovementsCsvExportParams params,
  ) async {
    debugPrint(
      '[CSV Export][Service] download iniciado query=${params.toQueryParameters()}',
    );
    _validateParams(params);

    try {
      final response = await _dio.get<List<int>>(
        '/reports/inventory-movements/csv',
        queryParameters: params.toQueryParameters(),
        options: Options(
          responseType: ResponseType.bytes,
          headers: const {'Accept': 'text/csv'},
        ),
      );

      final bytes = response.data;
      if (bytes == null || bytes.isEmpty) {
        debugPrint('[CSV Export][Service] download retornou bytes vazios');
        throw const AppException(message: 'Arquivo CSV vazio recebido.');
      }

      final filename = params.resolveFileName(
        response.headers.value('content-disposition'),
      );
      debugPrint(
        '[CSV Export][Service] resposta csv status=${response.statusCode} '
        'contentType=${response.headers.value('content-type')} '
        'disposition=${response.headers.value('content-disposition')} '
        'resolvedFilename=$filename bytes=${bytes.length}',
      );

      final tempDir = await getTemporaryDirectory();
      final safeFilename = _safeFilename(filename);
      final tempPath =
          '${tempDir.path}/csv_${DateTime.now().millisecondsSinceEpoch}_$safeFilename';
      final file = File(tempPath);
      await file.writeAsBytes(bytes, flush: true);
      debugPrint(
        '[CSV Export][Service] arquivo temporario criado path=$tempPath',
      );

      return InventoryMovementsCsvDownloadedFile(
        tempFilePath: file.path,
        filename: safeFilename,
        sizeInBytes: bytes.length,
        downloadedAt: DateTime.now(),
      );
    } on DioException catch (error) {
      debugPrint(
        '[CSV Export][Service] erro Dio no download '
        'status=${error.response?.statusCode} message=${error.message} '
        'data=${error.response?.data}',
      );
      throw AppException.fromDio(error);
    } catch (error, stackTrace) {
      debugPrint(
        '[CSV Export][Service] erro inesperado no download: $error\n$stackTrace',
      );
      rethrow;
    }
  }

  Future<void> shareDownloadedCsv(
    InventoryMovementsCsvDownloadedFile file,
    Rect? sharePositionOrigin,
  ) async {
    final source = File(file.tempFilePath);
    final exists = await source.exists();
    final length = exists ? await source.length() : 0;
    debugPrint(
      '[CSV Export][Service] share solicitado path=${file.tempFilePath} '
      'exists=$exists size=$length filename=${file.filename} '
      'origin=$sharePositionOrigin',
    );
    if (!exists) {
      throw const AppException(
        message: 'Arquivo não encontrado para compartilhar.',
      );
    }
    await SharePlus.instance.share(
      ShareParams(
        files: [XFile(file.tempFilePath)],
        text: file.filename,
        sharePositionOrigin: sharePositionOrigin,
      ),
    );
    debugPrint('[CSV Export][Service] share enviado para camada nativa');
  }

  Future<String?> saveAsDownloadedCsv(
    InventoryMovementsCsvDownloadedFile file,
  ) async {
    debugPrint(
      '[CSV Export][Service] saveAs solicitado path=${file.tempFilePath} '
      'filename=${file.filename}',
    );
    final destinationPath = await _pickDestinationPath(file.filename);
    if (destinationPath == null || destinationPath.trim().isEmpty) {
      debugPrint('[CSV Export][Service] saveAs cancelado: destino vazio');
      return null;
    }
    debugPrint(
      '[CSV Export][Service] saveAs destino selecionado=$destinationPath',
    );

    final source = File(file.tempFilePath);
    if (!await source.exists()) {
      debugPrint(
        '[CSV Export][Service] saveAs falhou: arquivo temporario ausente',
      );
      throw const AppException(
        message: 'Arquivo temporário não encontrado para salvar.',
      );
    }

    final destination = File(destinationPath);
    await destination.parent.create(recursive: true);
    await source.copy(destination.path);
    debugPrint(
      '[CSV Export][Service] saveAs concluido destino=${destination.path}',
    );
    return destination.path;
  }

  Future<String?> _pickDestinationPath(String filename) async {
    try {
      debugPrint(
        '[CSV Export][Service] abrindo saveFile com filename=$filename',
      );
      final savePath = await FilePicker.platform.saveFile(
        dialogTitle: 'Salvar CSV',
        fileName: filename,
        type: FileType.custom,
        allowedExtensions: const ['csv'],
      );
      if (savePath != null && savePath.trim().isNotEmpty) {
        final normalized = _ensureCsvExtension(savePath);
        debugPrint('[CSV Export][Service] saveFile retornou path=$normalized');
        return normalized;
      }
      debugPrint('[CSV Export][Service] saveFile sem retorno, tentando pasta');
    } catch (error, stackTrace) {
      debugPrint('[CSV Export][Service] erro no saveFile: $error\n$stackTrace');
      debugPrint('[CSV Export][Service] tentando fallback getDirectoryPath');
    }

    try {
      final folderPath = await FilePicker.platform.getDirectoryPath(
        dialogTitle: 'Escolha uma pasta para salvar',
      );
      if (folderPath == null || folderPath.trim().isEmpty) {
        debugPrint('[CSV Export][Service] getDirectoryPath cancelado');
        return null;
      }
      final uri = Directory(folderPath).uri.resolve(filename);
      final resolved = _ensureCsvExtension(uri.toFilePath());
      debugPrint('[CSV Export][Service] getDirectoryPath retornou=$resolved');
      return resolved;
    } catch (error, stackTrace) {
      debugPrint(
        '[CSV Export][Service] erro no getDirectoryPath: $error\n$stackTrace',
      );
      return null;
    }
  }

  void _validateParams(InventoryMovementsCsvExportParams params) {
    final requiresFarm = params.mode == InventoryMovementsCsvMode.filtered;

    if (requiresFarm &&
        (params.farmId == null || params.farmId!.trim().isEmpty)) {
      throw const AppException(
        message:
            'Selecione uma fazenda no contexto para este modo de exportação.',
      );
    }

    if (requiresFarm && (params.from == null || params.to == null)) {
      throw const AppException(
        message: 'Selecione o período para exportação filtrada.',
      );
    }

    if (requiresFarm && params.from!.isAfter(params.to!)) {
      throw const AppException(
        message: 'Data inicial deve ser menor que a data final.',
      );
    }
  }

  String _safeFilename(String input) {
    final normalized = input.trim().isEmpty
        ? 'inventory-movements.csv'
        : input.trim();
    final sanitized = normalized.replaceAll(RegExp(r'[\\/:*?"<>|]'), '_');
    return sanitized.toLowerCase().endsWith('.csv')
        ? sanitized
        : '$sanitized.csv';
  }

  String _ensureCsvExtension(String path) {
    return path.toLowerCase().endsWith('.csv') ? path : '$path.csv';
  }
}
