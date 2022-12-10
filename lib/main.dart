import 'package:flutter/material.dart';
import 'package:my_app/result.dart';
import './question.dart';
import './answer.dart';
import './quiz.dart';
import 'result.dart';

void main() {
  runApp(MyApps());
}

class MyApps extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return _MyAppState();
  }
}

class _MyAppState extends State<MyApps> {
  final _questions = const [
    {
      'questionText': "1. What's your favourtite color?",
      'answers': [
        {'text': 'Black', 'score': 10},
        {'text': 'Red', 'score': 15},
        {'text': 'Green', 'score': 20},
        {'text': 'White', 'score': 25},
      ]
    },
    {
      'questionText': "2. What's your favourite animal?",
      'answers': [
        {'text': 'Lion', 'score': 25},
        {'text': 'Tiger', 'score': 20},
        {'text': 'Elephant', 'score': 15},
        {'text': 'Panda', 'score': 10},
      ]
    },
    {
      'questionText': "3. Who is your favourite character in Mirzapur?",
      'answers': [
        {'text': 'Munna', 'score': 25},
        {'text': 'Kaleen', 'score': 15},
        {'text': 'Guddu', 'score': 20},
        {'text': 'Babloo', 'score': 10},
      ]
    },
    {
      'questionText': "4. What is your favourite Travel Destination?",
      'answers': [
        {'text': 'Massourie', 'score': 15},
        {'text': 'Jammu', 'score': 10},
        {'text': 'Ladakh', 'score': 25},
        {'text': 'Sikkim', 'score': 20}
      ]
    },
    {
      'questionText': "5. What is your favourite Drink?",
      'answers': [
        {'text': 'Tea', 'score': 15},
        {'text': 'Coffee', 'score': 25},
        {'text': 'Cold Drink', 'score': 10},
        {'text': 'Chocolate Shake', 'score': 20}
      ]
    },
    {
      'questionText': "6. Who is your favourite Actress?",
      'answers': [
        {'text': 'Alia', 'score': 10},
        {'text': 'Shradhha', 'score': 15},
        {'text': 'Jacqueline', 'score': 25},
        {'text': 'Rashmika', 'score': 20}
      ]
    },
    {
      'questionText': "7. What is your favourite Snack?",
      'answers': [
        {'text': 'Chips', 'score': 10},
        {'text': 'Pastry', 'score': 25},
        {'text': 'Samosa', 'score': 20},
        {'text': 'Chaat', 'score': 15}
      ]
    },
    {
      'questionText': "8. What is your favourite Sweet?",
      'answers': [
        {'text': 'Dahi-Jalebi', 'score': 25},
        {'text': 'Rabdi-Imarti', 'score': 15},
        {'text': 'Kaju Katli', 'score': 10},
        {'text': 'Motichoor Laddoo', 'score': 20}
      ]
    },
    {
      'questionText': "9. What is your favourite Time Pass?",
      'answers': [
        {'text': 'Sleep', 'score': 15},
        {'text': 'Music', 'score': 10},
        {'text': 'Youtube', 'score': 25},
        {'text': 'Reels or Shorts', 'score': 20}
      ]
    },
    {
      'questionText':
          "10. Which Country would you like to visit before you die?",
      'answers': [
        {'text': 'UAE', 'score': 10},
        {'text': 'USA', 'score': 20},
        {'text': 'Switzerland', 'score': 25},
        {'text': 'Thailand', 'score': 15}
      ]
    },
  ];

  var _questionIndex = 0;
  var _totalScore = 0;

  void _resetQuiz() {
    setState(() {
      _questionIndex = 0;
      _totalScore = 0;
    });
  }

  void _answerQuestion(int? score) {
    if (score != null) {
      _totalScore += score;
    }
    if (_questionIndex < _questions.length) {
      print('We have more questions!');
    } else {
      print("No more questions!");
    }
    setState(() {
      _questionIndex += 1;
    });
    print(_questionIndex);
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text("MY FIRST APP"),
        ),
        body: _questionIndex < _questions.length
            ? Quiz(
                answerQuestion: _answerQuestion,
                questionIndex: _questionIndex,
                questions: _questions,
              )
            : Result(_totalScore, _resetQuiz),
      ),
    );
  }
}
