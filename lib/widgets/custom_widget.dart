import 'package:flutter/material.dart';

class CustomWidget extends StatelessWidget {
  final Widget widgetChild;
  final Color color;
  const CustomWidget({this.widgetChild, this.color});

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: Container(
        decoration: BoxDecoration(
            color: color ?? const Color(0xff393B4B),
            borderRadius: const BorderRadius.all(Radius.circular(15))),
        child: widgetChild,
      ),
    );
  }
}
