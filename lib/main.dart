// ignore_for_file: unused_import, avoid_print

import 'package:flutter/material.dart';

void main() {
  runApp(MyGoodApp());
}

class MyGoodApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          title: Text('Здоровчик, Вовчик'),
        ),
        body: Column(
          children: <Widget>[
            Text('Вопрос первый'),
            RaisedButton(
              child: Text('Ответ 1'),
              onPressed: null,
            ),
            RaisedButton(
              child: Text('Ответ 2'),
              onPressed: null,
            ),
            RaisedButton(
              child: Text('Ответ 3'),
              onPressed: null,
            ),
          ],
        ),
      ),
    );
  }
}
