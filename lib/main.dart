import 'package:expense_planner/transaction.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(HomePage());
}

class HomePage extends StatelessWidget {
  final List<Transaction> transactions = [
    Transaction(
        id: "t1", title: "New Shoes", amount: 60.99, date: DateTime.now()),
    Transaction(
        id: "t2", title: "New Bags", amount: 79.99, date: DateTime.now()),
  ];

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text("Expense Planner"),
        ),
        body: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Container(
              width: double.infinity,
              child: Card(
                color: Colors.blueGrey,
                child: Text("Chart"),
                elevation: 5,
              ),
            ),
            Column(
              children: transactions.map((trn) {
                return Card(
                  child: Row(
                    children: [
                      Container(
                        decoration: BoxDecoration(
                            border: Border.all(color: Colors.purple, width: 2)),
                        margin:
                            EdgeInsets.symmetric(horizontal: 10, vertical: 15),
                        padding: EdgeInsets.all(10),
                        child: Text(
                          trn.amount.toString(),
                          style: TextStyle(
                              color: Colors.purple,
                              fontWeight: FontWeight.bold,
                              fontSize: 20),
                        ),
                      ),
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            trn.title,
                            style: TextStyle(
                                fontWeight: FontWeight.bold, fontSize: 15),
                          ),
                          Text(
                            trn.date.toString(),
                            style: TextStyle(
                              color: Colors.grey,
                            ),
                          )
                        ],
                      )
                    ],
                  ),
                  elevation: 5,
                );
              }).toList(),
            ),
          ],
        ),
      ),
    );
  }
}
