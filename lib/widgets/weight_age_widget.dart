import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class WeightAgeWidget extends StatelessWidget {
  final void Function() onpressedMinus;
  final void Function() onpressedPlus;
  final String text;
  final String numberText;
  const WeightAgeWidget({
    this.onpressedMinus,
    this.onpressedPlus,
    this.text,
    this.numberText,
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Text(
          text,
          style: const TextStyle(
            fontSize: 20.0,
          ),
        ),
        Text(
          numberText,
          style: const TextStyle(
            fontSize: 60.0,
            fontWeight: FontWeight.bold,
          ),
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            ElevatedButton(
              style: ElevatedButton.styleFrom(
                primary: Colors.blueGrey,
                shape: CircleBorder(),
              ),
              onPressed: onpressedMinus,
              child: Text(
                '-',
                style: TextStyle(fontSize: 60),
              ),
            ),
            ElevatedButton(
              style: ElevatedButton.styleFrom(
                primary: Colors.blueGrey,
                shape: CircleBorder(),
              ),
              onPressed: onpressedPlus,
              child: Text(
                '+',
                style: TextStyle(fontSize: 50),
              ),
            ),
          ],
        )
      ],
    );
  }
}
