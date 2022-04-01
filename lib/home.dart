// ignore_for_file: unused_local_variable, prefer_const_constructors, deprecated_member_use, prefer_const_literals_to_create_immutables, avoid_print, unused_element, unused_field

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
      'questionText': 'What\'s your favourite color?',
      'answers': [
        {'text': 'Black', 'score': 8},
        {'text': 'Green', 'score': 4},
        {'text': 'Blue', 'score': 6},
        {'text': 'White', 'score': 3},
      ]
    },
    {
      'questionText': 'What\'s your favourite animal?',
      'answers': [
        {'text': 'Tiger', 'score': 9},
        {'text': 'Lion', 'score': 6},
        {'text': 'Elephant', 'score': 7},
        {'text': 'Snake', 'score': 5},
      ]
    },
    {
      'questionText': 'What\'s your favourite Player?',
      'answers': [
        {'text': 'Tamim', 'score': 7},
        {'text': 'Shakib', 'score': 8},
        {'text': 'Mahmudullah', 'score': 5},
        {'text': 'Musfiq', 'score': 4},
      ]
    },
  ];

  var _questionIndex = 0;
  var _totalScore = 0;
  var _firstScore = 0;
  var _secondScore = 0;
  var _thirdScore = 0;

  void _answerQuestion(int score) {
    _totalScore += score;
    setState(() {
      if (_questionIndex == 0) {
        _firstScore = score;
      } 
      else if (_questionIndex == 1) {
        _secondScore = score;
      }
      else if (_questionIndex == 2) {
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
                resultSecondScore: _secondScore));
  }
}
