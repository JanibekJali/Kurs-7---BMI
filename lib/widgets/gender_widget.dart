import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class GenderWidget extends StatelessWidget {
  const GenderWidget({
    Key key,
    @required this.icon,
    @required this.text,
  }) : super(key: key);

  final IconData icon;
  final String text;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 60),
      child: Column(
        children: [
          FaIcon(
            icon,
            size: 50,
          ),
          const SizedBox(
            height: 15,
          ),
          Text(
            text.toUpperCase(),
            style: const TextStyle(fontSize: 20),
          ),
        ],
      ),
    );
  }
}
