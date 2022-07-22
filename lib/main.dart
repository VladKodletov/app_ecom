// ignore_for_file: unused_import, avoid_print

import 'package:flutter/material.dart';

void main() {
  runApp(MyGoodApp());
}

class MyGoodApp extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    // TODO: implement createState
    return MyGoodAppState();
  }
}

class MyGoodAppState extends State<MyGoodApp> {
  var questionInd = 0;

  void answerQQQ() {
    setState(() {
    questionInd = questionInd + 1;  
    });
        print(questionInd);
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
          title: Text('Здоровчик, Вовчик'),
        ),
        body: Column(
          children: <Widget>[
            Text(
              questionNumber[
                  questionInd], // другой вариант -questionNumber.elementAt(0),
            ),
            RaisedButton(
              child: Text('Красный'),
              onPressed: answerQQQ,
            ),
            RaisedButton(
              child: Text('Желтый'),
              onPressed: () {
                print('Выбран ответ Желтый');
              },
            ),
            RaisedButton(
              child: Text('Голубой'),
              onPressed: () {
                print('Выбран ответ Голубой');
              },
            ),
          ],
        ),
      ),
    );
  }
}
