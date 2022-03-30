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
  var _questionIndex = 0;

  void _answerQuestion() {
    setState(() {
      _questionIndex = _questionIndex + 1;
    });
    print(_questionIndex);
  }

  @override
  Widget build(BuildContext context) {
    var question = [
      'What\'s your favourite color?',
      'What\'s your favourite animal?',
    ];
    return Scaffold(
        appBar: AppBar(
          title: Text("My First App"),
        ),
        body: ListView(
          children: [
            Question(question[_questionIndex]),
            Answer(_answerQuestion),
            Answer(_answerQuestion),
            Answer(_answerQuestion),
          ],
        ));
  }
}
