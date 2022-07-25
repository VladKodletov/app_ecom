import 'package:flutter/material.dart';
import 'package:flutter/material.dart';

import 'answer.dart';
import 'question.dart';
import 'main.dart';

class Quizzz extends StatelessWidget {
  final List<Map<String, Object>> questionNumber;
  final int questionInd;
  final answerQQQ;

  Quizzz({
    required this.questionNumber,
    required this.questionInd,
    required this.answerQQQ,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      children: <Widget>[
        QQQuestion(
          questionNumber[questionInd]['questionText']
              as String, // другой вариант -questionNumber.elementAt(0),
        ),
        ...(questionNumber[questionInd]['answers'] as List<Map<String, Object>>)
            .map((answer) {
          return Answers(() => answerQQQ(answer['score']), answer['text'] as String);
        }).toList()
      ],
    );
  }
}
