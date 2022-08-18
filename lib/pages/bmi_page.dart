import 'package:bmi_calculator/app_constants/colors/app_colors.dart';
import 'package:bmi_calculator/controllers/bmi_page_controller.dart';

import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

import '../data/enums/gender_enum.dart';
import '../widgets/buttons/gender_widget.dart';
import 'result_page.dart';
import '../widgets/buttons/calcualtion_widget.dart';
import '../widgets/mainWidget/custom_widget.dart';
import '../widgets/buttons/weight_age_widget.dart';
import 'package:get/get.dart';

class MyHomePage extends StatelessWidget {
  MyHomePage({Key key, @required this.title}) : super(key: key);
  final BmiPageController bmiPageController =
      Get.put<BmiPageController>(BmiPageController());
  final String title;

  Color selectedColor = AppColors.selectedColor;
  Color unselectedColor = AppColors.unselectedColor;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.mainColor,
      appBar: AppBar(
        backgroundColor: AppColors.mainColor,
        title: const Text('BMI Эсептоо'),
        centerTitle: true,
      ),
      body: Center(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 20.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              Padding(
                padding: const EdgeInsets.only(bottom: 20),
                child: Obx(
                  () => Row(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      CustomWidget(
                          color: bmiPageController.gender.value == Gender.male
                              ? selectedColor
                              : unselectedColor,
                          widgetChild: InkWell(
                            onTap: () =>
                                bmiPageController.chooseGender(Gender.male),
                            child: const GenderWidget(
                              text: 'maLe',
                              icon: FontAwesomeIcons.mars,
                            ),
                          )),
                      const SizedBox(
                        width: 30,
                      ),
                      CustomWidget(
                        color: bmiPageController.gender.value == Gender.female
                            ? selectedColor
                            : unselectedColor,
                        widgetChild: InkWell(
                          onTap: () =>
                              bmiPageController.chooseGender(Gender.female),
                          child: const GenderWidget(
                            text: 'female',
                            icon: FontAwesomeIcons.venus,
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(bottom: 20),
                child: CustomWidget(
                  widgetChild: Obx(
                    () => Column(
                      children: [
                        const Padding(
                          padding: EdgeInsets.symmetric(vertical: 10),
                          child: Text(
                            'Height',
                            style: TextStyle(fontSize: 20),
                          ),
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          crossAxisAlignment: CrossAxisAlignment.baseline,
                          textBaseline: TextBaseline.alphabetic,
                          children: [
                            Text(
                              bmiPageController.getHeightValue.value
                                  .toStringAsFixed(0),
                              style: const TextStyle(
                                  fontSize: 60.0, fontWeight: FontWeight.bold),
                            ),
                            const Text(
                              'cm',
                            ),
                          ],
                        ),
                        Slider(
                          activeColor: AppColors.red,
                          inactiveColor: AppColors.blue,
                          thumbColor: AppColors.green,
                          min: 0,
                          value:
                              bmiPageController.getHeightValue.value.toDouble(),
                          max: 220,
                          onChanged: (double adamOzgortkonSlider) {
                            bmiPageController.setHeightValue =
                                adamOzgortkonSlider;
                          },
                        ),
                      ],
                    ),
                  ),
                ),
              ),
              Row(
                children: [
                  Obx(
                    () => CustomWidget(
                      widgetChild: Padding(
                        padding: const EdgeInsets.symmetric(vertical: 10),
                        child: WeightAgeWidget(
                          text: 'Weight',
                          numberText:
                              bmiPageController.getWeight.value.toString(),
                          onpressedMinus: () =>
                              bmiPageController.decrementWeight(),
                          onpressedPlus: () =>
                              bmiPageController.incrementWeight(),
                        ),
                      ),
                    ),
                  ),
                  const SizedBox(
                    width: 30,
                  ),
                  Obx(
                    () => CustomWidget(
                      widgetChild: Padding(
                        padding: const EdgeInsets.symmetric(vertical: 10),
                        child: WeightAgeWidget(
                          text: 'Age',
                          numberText: bmiPageController.getage.value.toString(),
                          onpressedMinus: () =>
                              bmiPageController.decrementAge(),
                          onpressedPlus: () => bmiPageController.incrementAge(),
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
      bottomNavigationBar: CalculationWidget(
        text: 'эсепте',
        onTap: () {
          Navigator.push(
              context,
              MaterialPageRoute(
                builder: (context) => SecondScreen(),
              ));
        },
      ),
    );
  }
}
