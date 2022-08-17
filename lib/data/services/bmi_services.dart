import 'dart:math' as math;

class BmiService {
  static double calculateBmi({int weight, int height}) {
    final bmi = weight / math.pow(height / 100, 2);

    return bmi;
  }

  static String getResult(double _bmi) {
    if (_bmi >= 25) {
      return 'Семиз';
    } else if (_bmi > 18.5) {
      return 'Норма';
    } else {
      return 'Арык';
    }
  }

  static String getInterpretation(double _bmi) {
    if (_bmi >= 25) {
      return 'Арыкташын керек экен, машык';
    } else if (_bmi > 18.5) {
      return 'Уктап жата бер, салмак норма';
    } else {
      return 'Кобураак же арык экенсин';
    }
  }
}
