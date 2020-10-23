import 'package:flutter/material.dart';

class TransactionList extends StatefulWidget {
  @override
  _TransactionListState createState() => _TransactionListState();
}

class _TransactionListState extends State<TransactionList> {
  final List<Transaction> transactions = [
    Transaction(
        id: "t1", title: "New Shoes", amount: 60.99, date: DateTime.now()),
    Transaction(
        id: "t2", title: "New Bags", amount: 79.99, date: DateTime.now()),
  ];

  @override
  Widget build(BuildContext context) {
    return Container();
  }
}
