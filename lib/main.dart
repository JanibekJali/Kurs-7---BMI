import 'package:bmi_calculator/bmi_brain.dart';
import 'package:bmi_calculator/second_screen.dart';
import 'package:bmi_calculator/widgets/gender_widget.dart';
import 'package:bmi_calculator/widgets/weight_age_widget.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'widgets/calcualtion_widget.dart';
import 'widgets/custom_widget.dart';

enum Gender {
  MALE,
  FEMALE,
  NONE,
}

enum Toyota { Camry, RAV4, HIGHLANDER, None }

Toyota mashina = Toyota.RAV4;

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData.dark().copyWith(
          appBarTheme: AppBarTheme(color: Colors.yellow),
          scaffoldBackgroundColor: Colors.green),
      home: const MyHomePage(title: 'Flutter Demo Home Page'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({Key key, @required this.title}) : super(key: key);

  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  double heightValue = 160;
  int _weight = 6000;
  Color selectedColor = const Color(0xff103B4B);
  Color unselectedColor = const Color(0xff393B4B);
  int age = 19;

  Gender gender = Gender.NONE;
  // bool maleColor = false;
  // bool femaleColor = false;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0XFF111427),
      appBar: AppBar(
        backgroundColor: Color(0XFF111427),
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
                child: Row(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    CustomWidget(
                        color: gender == Gender.MALE
                            ? selectedColor
                            : unselectedColor,
                        widgetChild: InkWell(
                          onTap: () {
                            setState(() {
                              // maleColor = true;
                              // maleColor = !maleColor;
                              // femaleColor = false;
                              gender = Gender.MALE;
                            });
                          },
                          child: const GenderWidget(
                              text: 'maLe', icon: FontAwesomeIcons.mars),
                        )),
                    const SizedBox(
                      width: 30,
                    ),
                    CustomWidget(
                      color: gender == Gender.FEMALE
                          ? selectedColor
                          : unselectedColor,
                      widgetChild: InkWell(
                        onTap: () {
                          setState(() {
                            // femaleColor = true;
                            // femaleColor = !femaleColor;
                            // maleColor = false;
                            gender = Gender.FEMALE;
                          });
                        },
                        child: GenderWidget(
                          text: 'female',
                          icon: FontAwesomeIcons.venus,
                        ),
                      ),
                    ),
                  ],
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(bottom: 20),
                child: CustomWidget(
                  widgetChild: Column(
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
                            heightValue.toStringAsFixed(0),
                            style: const TextStyle(
                                fontSize: 60.0, fontWeight: FontWeight.bold),
                          ),
                          const Text(
                            'cm',
                          ),
                        ],
                      ),
                      Slider(
                        activeColor: Colors.red,
                        inactiveColor: Colors.blue,
                        thumbColor: Colors.green,
                        min: 0,
                        value: heightValue.toDouble(),
                        max: 220,
                        onChanged: (double adamOzgortkonSlider) {
                          setState(() {});
                          heightValue = adamOzgortkonSlider;
                        },
                      ),
                    ],
                  ),
                ),
              ),
              Row(
                children: [
                  CustomWidget(
                    widgetChild: Padding(
                      padding: const EdgeInsets.symmetric(vertical: 10),
                      child: WeightAgeWidget(
                        text: 'Weight',
                        numberText: _weight.toString(),
                        onpressedMinus: () {
                          setState(() {
                            _weight--;
                          });
                        },
                        onpressedPlus: () {
                          setState(() {
                            _weight++;
                          });
                        },
                      ),
                    ),
                  ),
                  const SizedBox(
                    width: 30,
                  ),
                  CustomWidget(
                    widgetChild: Padding(
                      padding: const EdgeInsets.symmetric(vertical: 10),
                      child: WeightAgeWidget(
                        text: 'Age',
                        numberText: age.toString(),
                        onpressedMinus: () {
                          setState(() {
                            age--;
                          });
                        },
                        onpressedPlus: () {
                          setState(() {
                            age++;
                          });
                        },
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
                  builder: (context) => SecondScreen(
                        bmiResultat: BmiBrain.calculateBmi(
                          weight: _weight,
                          height: heightValue.toInt(),
                        ),
                      )));
        },
      ),
    );
  }
}

//Turnary operator =>
//  maleColor ? selectedColor : unselectedColor,
// kadimki shart
// if(maleColor == true){
// return selectedColor;
// }else{
// return  unselectedColor;
// }