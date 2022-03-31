// ignore_for_file: prefer_const_constructors, sized_box_for_whitespace, prefer_const_constructors_in_immutables, use_key_in_widget_constructors

import 'package:flutter/material.dart';

class Question extends StatelessWidget {
  final String _questionText;

  Question(this._questionText);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(left: 10, right: 10, top: 10, bottom: 10),
      child: Container(
        width: double.infinity,
        child: Text(
          _questionText,
          style: TextStyle(fontSize: 25, fontWeight: FontWeight.w600,color: Color.fromARGB(255, 238, 44, 9)),
          textAlign: TextAlign.center,
        ),
      ),
    );
  }
}
