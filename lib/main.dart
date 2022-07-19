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
      home: Center(child: Text('Здоровчик, Вовчик')),
    );
  }
}
