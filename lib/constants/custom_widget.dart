import 'package:intl/intl.dart';

class CustomWidget {
  String withComma(dynamic number) {
    final oCcy = NumberFormat("#,##0.00", "en_US");
    return oCcy.format(number);
  }

  String withComma1(dynamic number) {
    final oCcy = NumberFormat("#,##0.0", "en_US");
    return oCcy.format(number);
  }
}