import 'package:bmi_calculator/data/services/bmi_services.dart';

class BmiRepo {
  static double calculateBmi({int weight, int height}) {
    return BmiService.calculateBmi(height: height, weight: weight);
  }

  static String getResult(double bmi) {
    return BmiService.getResult(bmi);
  }

  static String getInterpretation(double bmi) {
    return BmiService.getInterpretation(bmi);
  }
}
