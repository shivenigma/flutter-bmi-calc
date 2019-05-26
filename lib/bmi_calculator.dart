import 'dart:math';

class BMICalc {
  final int height;
  final int weight;
  double _bmi;
  BMICalc({this.height, this.weight}) {
    this._bmi = weight / pow(height / 100, 2);
  }
  String getBmi() {
    return this._bmi.toStringAsFixed(1);
  }

  String getResult() {
    if (this._bmi >= 25) {
      return 'Overweight';
    } else if (this._bmi > 18.5) {
      return 'Normal';
    } else {
      return 'Underweight';
    }
  }

  String getInterpretation() {
    if (this._bmi >= 25) {
      return 'You have a higher than normal body weight. Try to excercise more.';
    } else if (this._bmi > 18.5) {
      return 'You have a normal body weight. Good job, maintain it.';
    } else {
      return 'You have a lower than normal body weight. You can eat a bit more.';
    }
  }
}
