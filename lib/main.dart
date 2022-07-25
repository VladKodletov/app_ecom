// ignore_for_file: unused_import, avoid_print

import 'package:app_ecom/answer.dart';
import 'package:app_ecom/question.dart';
import 'package:app_ecom/resulttt.dart';
import 'package:flutter/material.dart';
import 'quizzz.dart';

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
  final _questionNumber = const [
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
    if (_questionInd < _questionNumber.length) {
      print('Готовься к новым вопросикам!');
    } else {
      print('Больше вопросов нет!');
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
        body: _questionInd < _questionNumber.length
            ? Quizzz(
                answerQQQ: _answerQQQ,
                questionNumber: _questionNumber,
                questionInd: _questionInd,
              )
            : Resulttt(),
      ),
    );
  }
}
