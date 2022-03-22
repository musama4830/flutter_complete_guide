import 'package:flutter/material.dart';
import './questions.dart';
import './answers.dart';

class Quiz extends StatelessWidget {
  final List<Map<String, Object>> questions;
  final int index;
  final Function answerQuestion;

  Quiz({
    @required this.questions,
    @required this.answerQuestion,
    @required this.index,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Questions(
          questions[index]['question'] as String,
        ),
        ...(questions[index]['answers'] as List<Map<String, Object>>).map((answer) {
          return Answers(() => answerQuestion(answer['score']), answer['text']);
        }).toList()
      ],
    );
  }
}
