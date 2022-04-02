// ignore_for_file: unused_local_variable, prefer_const_constructors, deprecated_member_use,
// prefer_const_literals_to_create_immutables, avoid_print, unused_element, unused_field

import 'package:flutter/material.dart';
import 'package:leason_2/quiz.dart';
import 'package:leason_2/result.dart';

class Home extends StatefulWidget {
  const Home({Key? key}) : super(key: key);

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  final _questions = const [
    {
      'questionText': 'In which country was an eight-ball over in vogue till lately?',
      'answers': [
        {'text': 'Bangladesh', 'score': 0},
        {'text': 'Pakistan', 'score': 0},
        {'text': 'England', 'score': 0},
        {'text': 'Australia', 'score': 10},
      ]
    },
    {
      'questionText': 'What was the colour of the ball used in the earlier days of womens cricket in England?',
      'answers': [
        {'text': 'Blue', 'score': 10},
        {'text': 'Green', 'score': 0},
        {'text': 'White', 'score': 0},
        {'text': 'Black', 'score': 0},
      ]
    },
    {
      'questionText': 'When and where was the first Test played?',
      'answers': [
        {'text': 'Melbourne, 1877', 'score': 10},
        {'text': 'Melbourne, 1868', 'score': 0},
        {'text': 'Melbourne, 1856', 'score': 0},
        {'text': 'Melbourne, 1892', 'score': 0},
      ]
    },
  ];

  var _questionIndex = 0;
  var _totalScore = 0;
  var _firstScore = 0;
  var _secondScore = 0;
  var _thirdScore = 0;

  void _resetQuiz() {
    setState(() {
      _questionIndex = 0;
      _totalScore = 0;
      _firstScore = 0;
      _secondScore = 0;
      _thirdScore = 0;
    });
  }

  void _answerQuestion(int score) {
    _totalScore += score;
    setState(() {
      if (_questionIndex == 0) {
        _firstScore = score;
      } else if (_questionIndex == 1) {
        _secondScore = score;
      } else if (_questionIndex == 2) {
        _thirdScore = score;
      }
      _questionIndex++;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text("My First App"),
        ),
        body: _questionIndex < _questions.length
            ? Qiuz(
                answerQuestion: _answerQuestion,
                questionIndex: _questionIndex,
                questions: _questions)
            : Result(
                resultScore: _totalScore,
                resultFirstScore: _firstScore,
                resultThirdScore: _thirdScore,
                resultSecondScore: _secondScore,
                resetHandeler: _resetQuiz
                ));
  }
}
