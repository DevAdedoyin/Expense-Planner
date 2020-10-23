import 'package:expense_planner/widgets/user_transaction.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(HomePage());
}

class HomePage extends StatelessWidget {
  // String titleInput;
  // String amountInput;

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text("Exp6ense Planner"),
        ),
        body: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: <Widget>[
              Container(
                width: double.infinity,
                child: Card(
                  color: Colors.blueGrey,
                  child: Text("Chart"),
                  elevation: 5,
                ),
              ),
              UserTransaction(),
            ],
          ),
        ),
      ),
    );
  }
}
