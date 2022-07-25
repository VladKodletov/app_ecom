import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/material.dart';
import 'main.dart';

class Resulttt extends StatelessWidget {
  final int resultScoring;
  final void Function() resetHandler;

  Resulttt(this.resultScoring, this.resetHandler);

  String get resultPhrase {
    var resultText = 'Вы сделали это!';
    if (resultScoring <= 8) {
      resultText = 'Какой же ты крутыш!';
    } else if (resultScoring <= 12) {
      resultText = 'Странный ты тип!';
    } else {
      resultText = 'Ну что-то совсем не так у тебя!';
    }

    return resultText;
  }

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        children: [
          Text(
            resultPhrase,
            style: TextStyle(
              fontSize: 32,
              fontWeight: FontWeight.bold,
            ),
            textAlign: TextAlign.center,
          ),
          ElevatedButton(
            style: ElevatedButton.styleFrom(primary: Colors.indigo),
            onPressed: resetHandler,
            child: Text('Пройти заново!'),
          )
        ],
      ),
    );
  }
}
