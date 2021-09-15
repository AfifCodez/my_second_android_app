import 'package:development/answers.dart';
import 'package:development/questions.dart';
import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return _MyAppState();
  }
}

class _MyAppState extends State<MyApp> {
  var ans = 0;
  var questionIndex = 0;
  void answerQuestion() {
    setState(() {
      questionIndex = questionIndex + 1;
    });
    print(questionIndex);
  }

  Widget build(BuildContext context) {
    var questions = const [
      'What\'s your favourite car?',
      'What\'s your favourite color?',
      'What\'s your favourite City?'
    ];
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text('Question in list from Question class'),
        ),
        body: Column(
          children: [
            Questions(questions[questionIndex]),
            Answer(answerQuestion, questionIndex, ans),
            Answer(answerQuestion, questionIndex, ans + 1),
            Answer(answerQuestion, questionIndex, ans + 2),
            Answer(answerQuestion, questionIndex, ans + 3)
          ],
        ),
      ),
    );
  }
}
