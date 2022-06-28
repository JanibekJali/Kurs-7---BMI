import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class CustomWidget extends StatelessWidget {
  final Widget widgetChild;
  const CustomWidget({
    this.widgetChild,
  });

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: Container(
        decoration: const BoxDecoration(
            color: Color(0xff393B4B),
            borderRadius: BorderRadius.all(Radius.circular(15))),
        child: widgetChild,
      ),
    );
  }
}
