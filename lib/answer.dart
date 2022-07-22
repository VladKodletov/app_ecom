import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import './main.dart';

class Answers extends StatelessWidget {
  final VoidCallback selectHand;
  Answers(this.selectHand);
  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      child: RaisedButton(
        color: Colors.blue,
        child: Text('Красный'),
        onPressed: selectHand,
      ),
    );
  }
}
