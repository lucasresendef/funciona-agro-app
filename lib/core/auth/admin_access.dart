import 'package:field_management_app/core/storage/session_manager.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

final isAdminProvider = Provider<bool>((ref) {
  final profile = ref.watch(sessionManagerProvider).session?.profile;
  final roles = profile?.authUser.realmRoles ?? const <String>[];
  return roles.any((role) => role.toLowerCase() == 'app-admin');
});
