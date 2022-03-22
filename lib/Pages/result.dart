import 'package:flutter/material.dart';

class Result extends StatelessWidget {
  final int results;
  final Function playAgain;

  Result(this.results, this.playAgain);

  String get resultStatement {
    var resultText;
    if (results <= 10) {
      resultText = 'You are so bad!';
    } else if (results <= 16) {
      resultText = 'Pretty likeable!';
    } else if (results <= 22) {
      resultText =
          'You are awesome and innocent!';
    } else {
      resultText = 'You are ... strange!';
    }
    return resultText;
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      margin: EdgeInsets.all(10),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text(
            resultStatement,
            style: TextStyle(
              fontSize: 24,
              fontWeight: FontWeight.bold,
            ),
            textAlign: TextAlign.center,
          ),
          Text(
            'Your score : ' + results.toString(),
            style: TextStyle(
              fontSize: 24,
              fontWeight: FontWeight.bold,
            ),
            textAlign: TextAlign.center,
          ),
          FlatButton(
              child: Text('Reset Quiz!'),
              textColor: Colors.blue,
              onPressed: playAgain)
        ],
      ),
    );
  }
}
