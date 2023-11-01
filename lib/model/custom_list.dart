import 'dart:ui';

import 'package:dreamconnect/model/transaction_model.dart';

import 'balance_model.dart';

final List<BalanceModel> balance = [
  const BalanceModel(title: 'House Balance', amount: 45000),
  const BalanceModel(title: 'School Balance', amount: 40000),
  const BalanceModel(title: 'Church Balance', amount: 56000),
  const BalanceModel(title: 'Bill Balance', amount: 49000),
  const BalanceModel(title: 'Car Balance', amount: 70000),
  const BalanceModel(title: 'Food Balance', amount: 10000),
  const BalanceModel(title: 'Gas Balance', amount: 20000),
];

final List<TransactionModel> transaction = [
  const TransactionModel(title: 'XYZ Supermarket', date: '15 March 2021, 8:30 pm', amount: '-₦12,000', color: Color(0xFFFFCF87)),
  const TransactionModel(title: 'Finnac Pharmacy', date: '9 March 2021, 10:00 pm', amount: '-₦8,950', color: Color(0xFFE09FFF)),
  const TransactionModel(title: 'Goodwill Gym', date: '3 March 2021, 6:57 pm', amount: '-₦6,400', color: Color(0xFF87F0FF)),
  const TransactionModel(title: 'XYZ Supermarket', date: '15 March 2021, 8:30 pm', amount: '-₦12,000', color: Color(0xFFFFCF87)),
  const TransactionModel(title: 'Finnac Pharmacy', date: '9 March 2021, 10:00 pm', amount: '-₦8,950', color: Color(0xFFE09FFF)),
  const TransactionModel(title: 'Goodwill Gym', date: '3 March 2021, 6:57 pm', amount: '-₦6,400', color: Color(0xFF87F0FF)),
  const TransactionModel(title: 'XYZ Supermarket', date: '15 March 2021, 8:30 pm', amount: '-₦12,000', color: Color(0xFFFFCF87)),
  const TransactionModel(title: 'Finnac Pharmacy', date: '9 March 2021, 10:00 pm', amount: '-₦8,950', color: Color(0xFFE09FFF)),
  const TransactionModel(title: 'Goodwill Gym', date: '3 March 2021, 6:57 pm', amount: '-₦6,400', color: Color(0xFF87F0FF)),
];