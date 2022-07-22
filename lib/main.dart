// ignore_for_file: unused_import, avoid_print

import 'package:app_ecom/answer.dart';
import 'package:app_ecom/question.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(MyGoodApp());
}

class MyGoodApp extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    // TODO: implement createState
    return _MyGoodAppState();
  }
}

class _MyGoodAppState extends State<MyGoodApp> {
  var _questionInd = 0;

  void _answerQQQ() {
    setState(() {
      _questionInd = _questionInd + 1;
    });
    print(_questionInd);
  }

  @override
  Widget build(BuildContext context) {
    var questionNumber = [
      'Назови свой любимый цвет?',
      'Назови своё любимое животное?',
    ];
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          title: Text(
            'Здоровчик, Вовчик',
          ),
        ),
        body: Column(
          children: <Widget>[
            QQQuestion(
              questionNumber[
                  _questionInd], // другой вариант -questionNumber.elementAt(0),
            ),
            Answers(_answerQQQ),
            Answers(_answerQQQ),
            Answers(_answerQQQ),
          ],
        ),
      ),
    );
  }
}
