import 'package:flutter/material.dart';
import './main.dart';

class Answers extends StatelessWidget {
  final VoidCallback selectHand;
  final String answerText;
  Answers(this.selectHand, this.answerText);
  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      child: ElevatedButton(
        style: ButtonStyle(
          backgroundColor:
              MaterialStateProperty.all(Color.fromARGB(255, 34, 163, 146)),
        ),
        child: Text(answerText),
        onPressed: selectHand,
      ),
    );
  }
}
