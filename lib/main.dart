// ignore_for_file: unused_import, avoid_print

import 'package:future_test_friends/answer.dart';
import 'package:future_test_friends/question.dart';
import 'package:future_test_friends/resulttt.dart';
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
        {'text': 'черный', 'score': 2},
        {'text': ' красный', 'score': 4},
        {'text': 'зеленый', 'score': 6},
      ],
    },
    {
      'questionText': 'Назови своё любимое животное?',
      'answers': [
        {'text': 'кролик', 'score': 2},
        {'text': 'конь', 'score': 4},
        {'text': 'як', 'score': 7},
      ],
    },
    {
      'questionText': 'Назови своего любимого препода?',
      'answers': [
        {'text': 'Макс', 'score': 10},
        {'text': 'неМакс', 'score': 0},
        {'text': 'Макс', 'score': 10},
      ],
    },
  ];
  var _questionInd = 0;
  var _totalScore = 0;

  void _resetQ() {
    setState(() { 
      _questionInd = 0;
      _totalScore = 0;
    });
  }

  void _answerQQQ(int score) {
    _totalScore = _totalScore + score;

    setState(() {
      _questionInd = _questionInd + 1;
    });
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
            : Resulttt(_totalScore, _resetQ),
      ),
    );
  }
}
