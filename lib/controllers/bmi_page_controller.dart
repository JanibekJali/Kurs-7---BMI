import 'package:get/get.dart';

import '../data/enums/gender_enum.dart';

class BmiPageController extends GetxController {
  RxDouble _heightValue = 160.0.obs;
  RxInt _weight = 60.obs;
  RxInt _age = 19.obs;
  Rx<Gender> gender = Gender.none.obs;
  RxDouble get getHeightValue => _heightValue;
  RxInt get getWeight => _weight;
  RxInt get getage => _age;
  void chooseGender(Gender chosenGender) {
    gender.value = chosenGender;
  }

  set setHeightValue(double dannyi) {
    _heightValue.value = dannyi;
  }

  void decrementWeight() {
    _weight.value--;
  }

  void incrementWeight() {
    _weight.value++;
  }

  void decrementAge() {
    _age.value--;
  }

  void incrementAge() {
    _age.value++;
  }
}
