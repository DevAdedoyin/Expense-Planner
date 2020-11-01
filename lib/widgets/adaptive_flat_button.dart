import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'dart:io';

class AdaptiveFlatButton extends StatelessWidget {
  final String _text;
  final Function _datePicker;

  AdaptiveFlatButton(this._text, this._datePicker);

  @override
  Widget build(BuildContext context) {
    return Platform.isIOS
        ? CupertinoButton(
            child: Text(
              "Choose Date",
              style: TextStyle(
                  fontWeight: FontWeight.bold,
                  color: Theme.of(context).primaryColor),
            ),
            onPressed: _datePicker)
        : FlatButton(
            onPressed: _datePicker,
            child: Text(
              _text,
              style: TextStyle(
                  fontWeight: FontWeight.bold,
                  color: Theme.of(context).primaryColor),
            ),
          );
  }
}
