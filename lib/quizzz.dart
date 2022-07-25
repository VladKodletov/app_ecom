import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/material.dart';

import 'answer.dart';
import 'question.dart';
import 'main.dart';

class Quizzz extends StatelessWidget {
  final List<Map<String, Object>> questionNumber;
  final int questionInd;
  final VoidCallback answerQQQ;

  Quizzz(
      {required this.questionNumber,
      required this.answerQQQ,
      required this.questionInd});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: <Widget>[
        QQQuestion(
          questionNumber[questionInd]['questionText']
              as String, // другой вариант -questionNumber.elementAt(0),
        ),
        ...(questionNumber[questionInd]['answers'] as List<String>)
            .map((answer) {
          return Answers(answerQQQ, answer);
        }).toList()
      ],
    );
  }
}
