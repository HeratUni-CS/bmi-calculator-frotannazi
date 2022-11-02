import 'dart:math';

import 'package:flutter/cupertino.dart';

class Calculator {
  final int? height;
  final int? weight;
  double _bmi = 0;

  Calculator({@required this.height, @required this.weight});

  String calculateBMI() {
    _bmi = weight! / pow(height! / 100, 2);
    return _bmi.toStringAsFixed(1);
  }

  String getInterpretation() {
    if (_bmi < 18.5) {
      return ('It\'s good for you to eat more ');
    } else if (_bmi >= 18 && _bmi < 25) {
      return ('You\'re Perfect!');
    } else if (_bmi >= 25 && _bmi < 30) {
      return ('Think more about your health!');
    } else if (_bmi >= 30) {
      return ('You\'re in danger! Please exercise.');
    } else {
      return ('No idea :| ');
    }
  }

  String getResult() {
    if (_bmi < 18.5) {
      return 'Underweight';
    } else if (_bmi >= 18 && _bmi < 25) {
      return 'Healthy weight!';
    } else if (_bmi >= 25 && _bmi < 30) {
      return 'Overweight';
    } else if (_bmi >= 30) {
      return 'Obese';
    } else {
      return 'out of ranges! ';
    }
  }
}
