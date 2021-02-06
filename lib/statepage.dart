import 'package:flutter/material.dart';
import 'quizbrain.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter_alert/flutter_alert.dart';
import 'package:quizworld/quizbrain.dart';

class QpApp extends StatefulWidget {
  @override
  _QpAppState createState() => _QpAppState();
}

class _QpAppState extends State<QpApp> {
  QuizBrain quizBrain = QuizBrain();
  List<Icon> scorekeeper = [];
  void checkanswer(bool userpicked) {
    setState(() {
      bool correct = quizBrain.getanswer();
      if (quizBrain.isFinished() == true) {
        showAlert(
          context: context,
          title: "End of questions",
          body: "Do you want to restart?",
          actions: [
            AlertAction(
              text: "yes",
              isDestructiveAction: true,
              onPressed: () {
                quizBrain.reset();
                scorekeeper = [];
              },
            ),
          ],
          cancelable: true,
        );
      } else {
        if (correct != userpicked) {
          scorekeeper.add(Icon(Icons.close, color: Colors.red));
        } else {
          scorekeeper.add(Icon(Icons.check, color: Colors.green.shade900));
        }

        quizBrain.nextQuestion();
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      crossAxisAlignment: CrossAxisAlignment.stretch,
      children: <Widget>[
        Expanded(
          flex: 6,
          child: Padding(
            padding: EdgeInsets.fromLTRB(10.0, 190.0, 10.0, 0.0),
            child: Text(
              quizBrain.getquestion(),
              style: TextStyle(color: Colors.black, fontSize: 25.0),
              textAlign: TextAlign.center,
            ),
          ),
        ),
        Expanded(
          child: Padding(
            padding: EdgeInsets.symmetric(vertical: 10.0, horizontal: 10.0),
            child: FlatButton(
                padding: EdgeInsets.all(10.0),
                color: Colors.green.shade900,
                child: Text(
                  'True',
                  style: TextStyle(fontSize: 20.0),
                ),
                onPressed: () {
                  checkanswer(true);
                  print('pressed true');
                }),
          ),
        ),
        Expanded(
          child: Padding(
            padding: EdgeInsets.symmetric(vertical: 10.0, horizontal: 10.0),
            child: FlatButton(
              padding: EdgeInsets.all(10.0),
              color: Colors.red,
              child: Text(
                'False',
                style: TextStyle(fontSize: 20.0),
              ),
              onPressed: () {
                print('pressed false');
                checkanswer(false);
              },
            ),
          ),
        ),
        Expanded(
          child: Row(
            children: scorekeeper,
          ),
        ),
      ],
    );
  }
}
