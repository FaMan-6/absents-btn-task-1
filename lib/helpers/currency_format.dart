import 'package:intl/intl.dart';

String formater(int value) {
  return NumberFormat.currency(
    locale: 'id',
    symbol: 'Rp.',
    decimalDigits: 0,
  ).format(value);
}
