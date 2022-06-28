import 'package:flutter/material.dart';

class WeightAgeWidget extends StatelessWidget {
  final void Function() onpressed;
  final String ageText;
  const WeightAgeWidget({this.onpressed, this.ageText, Key key})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Text('Age'),
        Text(ageText),
        Row(
          children: [
            ElevatedButton(
              onPressed: onpressed,
              //     child: FaIcon(FontAwesomeIcons.minus)),
              // FaIcon(FontAwesomeIcons.plus),
            )
          ],
        )
      ],
    );
  }
}
