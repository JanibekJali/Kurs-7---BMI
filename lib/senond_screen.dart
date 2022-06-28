import 'package:flutter/material.dart';

class SenondScreen extends StatefulWidget {
  const SenondScreen({Key key}) : super(key: key);

  @override
  _SenondScreenState createState() => _SenondScreenState();
}

class _SenondScreenState extends State<SenondScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
          // backgroundColor: Colors.black,
          ),
      body: Center(child: Text('Ekinch bet')),
    );
  }
}
