import 'package:flutter/material.dart';

class CalculationWidget extends StatelessWidget {
  final VoidCallback onTap;
  final String text;
  const CalculationWidget({
    Key key,
    this.onTap,
    this.text,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
        child: Text(
          text.toUpperCase(),
          style: TextStyle(fontSize: 35.0),
        ),
        color: Colors.pink,
        height: MediaQuery.of(context).size.height * 0.1,
        width: double.infinity,
        alignment: Alignment.center,
      ),
    );
  }
}
