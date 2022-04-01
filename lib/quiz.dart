// ignore_for_file: prefer_const_constructors_in_immutables, use_key_in_widget_constructors

import 'package:flutter/material.dart';

import 'answer.dart';
import 'question.dart';

class Qiuz extends StatelessWidget {
  final int questionIndex;
  final VoidCallback answerQuestion;
  final List<Map<String, Object>> questions;

  Qiuz(
      {required this.answerQuestion,
      required this.questionIndex,
      required this.questions});

  @override
  Widget build(BuildContext context) {
    return ListView(
      children: [
        Question(questions[questionIndex]['questionText'] as String),
        ...(questions[questionIndex]['answers'] as List<String>).map((answer) {
          return Answer(answerQuestion, answer);
        }).toList()
      ],
    );
  }
}
