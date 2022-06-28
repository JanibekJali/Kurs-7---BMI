import 'package:bmi_calculator/widgets/gender_widget.dart';
import 'package:bmi_calculator/widgets/weight_age_widget.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

import 'senond_screen.dart';
import 'widgets/custom_widget.dart';

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
  int age = 19;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0XFF111427),
      appBar: AppBar(
        title: const Text('BMI Эсептоо'),
      ),
      body: Center(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 20.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              Row(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: const [
                  CustomWidget(
                      widgetChild: GenderWidget(
                          text: 'maLe', icon: FontAwesomeIcons.mars)),
                  SizedBox(
                    width: 30,
                  ),
                  CustomWidget(
                    widgetChild: GenderWidget(
                      text: 'female',
                      icon: FontAwesomeIcons.venus,
                    ),
                  ),
                ],
              ),
              CustomWidget(
                widgetChild: Column(
                  children: [
                    const Text(
                      'Height',
                      style: TextStyle(fontSize: 20),
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      crossAxisAlignment: CrossAxisAlignment.baseline,
                      textBaseline: TextBaseline.alphabetic,
                      children: [
                        Text(
                          heightValue.toStringAsFixed(0),
                          style: TextStyle(
                              fontSize: 60.0, fontWeight: FontWeight.bold),
                        ),
                        Text(
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
              Expanded(
                child: Row(
                  children: [
                    CustomWidget(
                      widgetChild: Column(
                        children: [
                          Text('Weight'),
                          Text('60'),
                          Row(
                            children: [
                              FaIcon(FontAwesomeIcons.minus),
                              FaIcon(FontAwesomeIcons.plus),
                            ],
                          )
                        ],
                      ),
                    ),
                    CustomWidget(
                        widgetChild: WeightAgeWidget(
                      ageText: age.toString(),
                      onpressed: () {
                        setState(() {
                          age--;
                        });
                      },
                    )),
                  ],
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
