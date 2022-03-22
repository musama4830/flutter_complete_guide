import 'package:flutter/material.dart';
import './quiz.dart';
import './result.dart';

class MyQuizApp extends StatefulWidget {
  // const MyQuizApp({Key? key}) : super(key: key);

  @override
  State<MyQuizApp> createState() => _MyQuizAppState();
}

class _MyQuizAppState extends State<MyQuizApp> {
  var index = 0;
  var totalScore = 0;

  var questions = [
    {
      'question': 'What\'s your favourite color?',
      'answers': [
        {'text': 'Red', 'score': 5},
        {'text': 'Green', 'score': 10},
        {'text': 'Blue', 'score': 3},
        {'text': 'White', 'score': 7},
      ],
    },
    {
      'question': 'What\'s your favourite animal?',
      'answers': [
        {'text': 'Cat', 'score': 3},
        {'text': 'Dog', 'score': 7},
        {'text': 'Rabbit', 'score': 10},
        {'text': 'Horse', 'score': 5},
      ],
    },
    {
      'question': 'What\'s your favourite Drink?',
      'answers': [
        {'text': 'Cold Drinks', 'score': 3},
        {'text': 'Hot Drinks', 'score': 5},
        {'text': 'Juices', 'score': 7},
        {'text': 'Water', 'score': 10},
      ],
    },
  ];

  void answerQuestion(int score) {
    totalScore += score;

    if (index < questions.length) {
      print(index);
      setState(() {
        index = index + 1;
      });
    }
  }

  void reset() {
    setState(() {
      index = 0;
      totalScore = 0;
    });
  }

  @override
  Widget build(BuildContext context) {
    var materialApp = MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text("My First Quiz App"),
        ),
        body: index < questions.length
            ? Quiz(
                questions: questions,
                answerQuestion: answerQuestion,
                index: index,
              )
            : Result(totalScore, reset),
      ),
    );
    return materialApp;
  }
}
