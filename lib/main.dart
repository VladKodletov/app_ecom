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
  final questionNumber = const [
    {
      'questionText': 'Назови свой любимый цвет?',
      'answers': [
        'черный',
        'красный',
        'зеленый',
      ],
    },
    {
      'questionText': 'Назови своё любимое животное?',
      'answers': [
        'кролик',
        'конь',
        'як',
      ],
    },
    {
      'questionText': 'Назови своего любимого препода?',
      'answers': [
        'Макс',
        'Макс',
        'Макс',
      ],
    },
  ];
  var _questionInd = 0;

  void _answerQQQ() {
    setState(() {
      _questionInd = _questionInd + 1;
    });
    print(_questionInd);
    if (_questionInd < questionNumber.length) {
      print('Готовься к новым вопросикам!');
    }
    
  }

  @override
  Widget build(BuildContext context) {
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
              questionNumber[_questionInd]['questionText']
                  as String, // другой вариант -questionNumber.elementAt(0),
            ),
            ...(questionNumber[_questionInd]['answers'] as List<String>)
                .map((answer) {
              return Answers(_answerQQQ, answer);
            }).toList()
          ],
        ),
      ),
    );
  }
}
