import 'package:bmi_calculator/controllers/bmi_page_controller.dart';
import 'package:bmi_calculator/data/repos/bmi_repo.dart';
import 'package:get/get.dart';

class BmiResultController extends GetxController {
  @override
  void onInit() {
    calculateBmi();
    getResult();
    getInterpretation();
    super.onInit();
  }

  final BmiPageController bmiPageController = Get.find<BmiPageController>();
  RxString title = 'No Results'.obs;
  RxDouble result = 0.0.obs;
  RxString description = 'No Results'.obs;
  void calculateBmi() {
    result.value = BmiRepo.calculateBmi(
      bmiPageController.getWeight.value,
      bmiPageController.getHeightValue.value.toInt(),
    );
  }

  void getResult() {
    title.value = BmiRepo.getResult(result.value);
  }

  void getInterpretation() {
    description.value = BmiRepo.getInterpretation(result.value);
  }
}
