import 'package:flutter/material.dart';

class NewTransaction extends StatelessWidget {
  final Function addTx;
  final textController = TextEditingController();
  final amountController = TextEditingController();

  NewTransaction(this.addTx);

  void submitData() {
    final enteredTitle = textController.text;
    final enteredAmount = double.parse(amountController.text);

    if (enteredTitle.isEmpty || enteredAmount <= 0) {
      return;
    }

    addTx(enteredTitle, enteredAmount);
  }

  @override
  Widget build(BuildContext context) {
    return Card(
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
              onSubmitted: (_) => submitData(),
            ),
            TextField(
              decoration: InputDecoration(labelText: "Amount"),
              // onChanged: (val) => amountInput = val,
              controller: amountController,
              keyboardType: TextInputType.number,
              onSubmitted: (_) => submitData,
            ),
            FlatButton(
              onPressed: () {
                //print(textController.text);
                //print(amountController.text);
                submitData();
              },
              child: Text("Add Transaction"),
              textColor: Colors.purple,
            )
          ],
        ),
      ),
    );
  }
}
