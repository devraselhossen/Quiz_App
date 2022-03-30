// ignore_for_file: unused_local_variable, prefer_const_constructors, deprecated_member_use, prefer_const_literals_to_create_immutables, avoid_print

import 'package:flutter/material.dart';

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
      'What\'s your favourite colour?',
      'What\'s your favourite animal?',
    ];
    return Scaffold(
        appBar: AppBar(
          title: Text("my First App"),
        ),
        body: Padding(
          padding: const EdgeInsets.all(8.0),
          child: ListView(
            children: [
              Text(question[_questionIndex]),
              SizedBox(
                height: 10,
              ),
              RaisedButton(
                onPressed: _answerQuestion,
                child: Text("Answer 1"),
              ),
              SizedBox(
                height: 10,
              ),
              RaisedButton(
                onPressed: _answerQuestion,
                child: Text("Answer 2"),
              ),
              SizedBox(
                height: 10,
              ),
              RaisedButton(
                onPressed: _answerQuestion,
                child: Text("Answer 3"),
              ),
            ],
          ),
        ));
  }
}
