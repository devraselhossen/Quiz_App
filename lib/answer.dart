// ignore_for_file: avoid_unnecessary_containers, deprecated_member_use, prefer_const_constructors, prefer_const_constructors_in_immutables, use_key_in_widget_constructors

import 'package:flutter/material.dart';

class Answer extends StatelessWidget {
  
  final VoidCallback _selectHandeler;
  final String _answerText;

  Answer(this._selectHandeler, this._answerText);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(left: 10, right: 10, top: 5, bottom: 5),
      child: Container(
        child: RaisedButton(
          color: Color.fromARGB(255, 13, 212, 46),
          onPressed: _selectHandeler,
          child: Text(_answerText),
        ),
      ),
    );
  }
}
