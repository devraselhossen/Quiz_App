// ignore_for_file: unused_local_variable, prefer_const_constructors, deprecated_member_use, prefer_const_literals_to_create_immutables, avoid_print, unused_element

import 'package:flutter/material.dart';
import 'package:leason_2/answer.dart';
import 'package:leason_2/question.dart';

class Home extends StatefulWidget {
  const Home({Key? key}) : super(key: key);

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  final questions = const [
    {
      'questionText': 'What\'s your favourite color?',
      'answers': ['Black', 'Green', 'Blue', 'White']
    },
    {
      'questionText': 'What\'s your favourite animal?',
      'answers': ['Tiger', 'Lion', 'Elephant', 'Snake']
    },
    {
      'questionText': 'What\'s your favourite Player?',
      'answers': ['Tamim', 'Shakib', 'Mahmudullah', 'Musfiq']
    },
  ];

  var _questionIndex = 0;

  void _answerQuestion() {
    setState(() {
      _questionIndex = _questionIndex + 1;
    });
    print(_questionIndex);
    if (_questionIndex < questions.length) {
      print("We have more question");
    } else {
      print("No more question");
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text("My First App"),
        ),
        body: _questionIndex < questions.length
            ? ListView(
                children: [
                  Question(questions[_questionIndex]['questionText'] as String),
                  ...(questions[_questionIndex]['answers'] as List<String>)
                      .map((answer) {
                    return Answer(_answerQuestion, answer);
                  }).toList()
                ],
              )
            : Center(
                child: Text("Congratulation!"),
              ));
  }
}
