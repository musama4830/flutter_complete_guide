import 'package:flutter/material.dart';

class Answers extends StatelessWidget {
  final Function answerIndex;
  final String answerText;

  Answers (this.answerIndex, this.answerText);

  @override
  Widget build(BuildContext context) {
    return Container(
       width: double.infinity,
      child: RaisedButton(
        color: Colors.blue,
        textColor: Colors.white,
        child: Text(answerText),
        onPressed: answerIndex,
      ),
    );
  }
}
