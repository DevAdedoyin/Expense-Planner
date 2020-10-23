import 'package:expense_planner/transaction.dart';
import 'package:flutter/material.dart';
import 'package:intl/intl.dart';

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

  // String titleInput;
  // String amountInput;
  final textController = TextEditingController();
  final amountController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text("Expense Planner"),
        ),
        body: Column(
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
            Card(
              elevation: 5,
              child: Container(
                padding: EdgeInsets.all(5),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.end,
                  children: [
                    TextField(
                      decoration: InputDecoration(labelText: "Title"),
                      // onChanged: (val) => titleInput = val,
                      controller: textController,
                    ),
                    TextField(
                      decoration: InputDecoration(labelText: "Amount"),
                      // onChanged: (val) => amountInput = val,
                      controller: amountController,
                    ),
                    FlatButton(
                      onPressed: () {
                        print(textController.text);
                        print(amountController.text);
                      },
                      child: Text("Add Transaction"),
                      textColor: Colors.purple,
                    )
                  ],
                ),
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
                          '\$${trn.amount}',
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
                            DateFormat.yMMMMd().format(trn.date),
                            style: TextStyle(color: Colors.grey, fontSize: 10),
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
