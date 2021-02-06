import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:quizworld/homescreen.dart';
import 'package:quizworld/quizbrain.dart';

QuizBrain quizBrain = QuizBrain();
void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: HomeScreen(),
    );
  }
}
