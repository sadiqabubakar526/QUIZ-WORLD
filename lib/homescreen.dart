import 'package:flutter/material.dart';
import 'package:quizworld/quizpage.dart';

class HomeScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.blue.shade700,
      body: SafeArea(
        child: Container(
          child: Center(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: <Widget>[
                Text('QuizzO',
                    style:
                        TextStyle(fontWeight: FontWeight.w700, fontSize: 80.0)),
                SizedBox(
                  height: 20,
                ),
                FlatButton(
                  child: Text(
                    'Start Quiz',
                    style: TextStyle(fontSize: 20),
                  ),
                  shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(18.0),
                      side: BorderSide(color: Colors.black)),
                  color: Colors.white,
                  onPressed: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => QuizPage(),
                      ),
                    );
                  },
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
