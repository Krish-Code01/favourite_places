import 'package:flutter/material.dart';

class Result extends StatelessWidget {
  final int resultScore;
  final VoidCallback resetHandler;
  Result(this.resultScore, this.resetHandler);

  String get resultPhrase {
    var resultText = "You completed it!";
    if (resultScore >= 200) {
      resultText =
          "You and Krishna are not only friends but also much more than that!";
    } else if (resultScore < 200 && resultScore >= 150) {
      resultText = "You and Krishna share a strong bond!";
    } else if (resultScore >= 100 && resultScore < 150) {
      resultText = "You and Krishna are very good friends!";
    }
    return resultText;
  }

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        children: <Widget>[
          Text(
            resultPhrase,
            style: TextStyle(fontSize: 30, fontWeight: FontWeight.bold),
            textAlign: TextAlign.center,
          ),
          OutlinedButton(
            style: OutlinedButton.styleFrom(
                primary: Colors.redAccent,
                side: BorderSide(color: Colors.black)),
            child: Text("Restart the quiz!"),
            onPressed: resetHandler,
          )
        ],
      ),
    );
  }
}
