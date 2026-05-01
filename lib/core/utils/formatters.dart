import 'package:intl/intl.dart';

abstract final class AppFormatters {
  static final _date = DateFormat('dd/MM/yyyy');
  static final _dateTime = DateFormat('dd/MM/yyyy HH:mm');
  static final _decimal = NumberFormat.decimalPattern('pt_BR');
  static final _currency = NumberFormat.currency(
    locale: 'pt_BR',
    symbol: 'R\$',
  );

  static String date(DateTime? value) =>
      value == null ? '-' : _date.format(value.toLocal());

  static String dateTime(DateTime? value) =>
      value == null ? '-' : _dateTime.format(value.toLocal());

  static String number(num? value) =>
      value == null ? '-' : _decimal.format(value);

  static String currency(num? value) =>
      value == null ? '-' : _currency.format(value);
}
