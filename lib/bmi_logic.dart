import 'dart:math';

class BMILogic{
  BMILogic({this.weight, this.height});

  final int weight;
  final int height;
  double _bmi;

  String calculateBMI() {
    _bmi = weight / pow(height / 100, 2);
    return _bmi.toStringAsFixed(1);
  }

    String getDescription() {
      if (_bmi >= 25) {
        return 'OVERWEIGHT';
      }
      else if (_bmi <= 18) {
        return 'NORMAL';
      }
      else{
        return 'UNDERWEIGHT';
      }
    }
  String getInterpretation() {
    if (_bmi >= 25) {
      return 'You get too much body mass, engage in exercise!';
    }
    else if (_bmi <= 18) {
      return 'You are good, you have a normal BMI';
    }
    else{
      return 'BMI too low. Try to dey chop something';
    }
  }
}