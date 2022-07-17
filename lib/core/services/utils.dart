import 'package:intl/intl.dart';

String formatPhoneNumber(double phoneNumber) {
  var f = NumberFormat("#,##,###.0#", "en_US");

  return f.format(phoneNumber);
}
