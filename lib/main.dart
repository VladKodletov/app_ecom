// ignore_for_file: unused_import, avoid_print

import 'package:flutter/material.dart';

class Person {
  var name = 'Vlad';
  var age = 33;
  myPsichologyAce() {
    return age + 10;
  }
}

void main() {
  var p1 = Person();
  print(p1.myPsichologyAce());
}
