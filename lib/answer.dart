import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import './main.dart';

class Answers extends StatelessWidget {
  final VoidCallback selectHand;
  final String answerText;
  Answers(this.selectHand, this.answerText);
  @override 
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      child: RaisedButton(
        color: Colors.blue,
        textColor: Colors.white,
        child: Text(answerText),
        onPressed: selectHand,
      ),
    );
  }
}
