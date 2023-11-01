import 'dart:ui';

class TransactionModel {
  final String title;
  final String date;
  final String amount;
  final Color color;

  const TransactionModel({
    required this.title,
    required this.date,
    required this.amount,
    required this.color,
  });
}
