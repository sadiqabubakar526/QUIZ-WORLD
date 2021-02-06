import 'package:flutter/cupertino.dart';
import 'statepage.dart';
import 'package:flutter/material.dart';

class QuizPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.blue.shade200,
        body: SafeArea(
          child: Padding(
            padding: EdgeInsets.all(20.0),
            child: QpApp(),
          ),
        ));
  }
}
