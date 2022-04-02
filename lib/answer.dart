// ignore_for_file: avoid_unnecessary_containers, deprecated_member_use, prefer_const_constructors, prefer_const_constructors_in_immutables, use_key_in_widget_constructors, sized_box_for_whitespace

import 'package:flutter/material.dart';

class Answer extends StatelessWidget {
  final VoidCallback _selectHandeler;
  final String _answerText;

  Answer(this._selectHandeler, this._answerText);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(left: 10, right: 10),
      child: Container(
        child: ElevatedButton(
          style: ElevatedButton.styleFrom(
            primary: Colors.orange,
            onPrimary: Colors.white
          ),
          onPressed: _selectHandeler,
          child: Text(_answerText),
        ),
      ),
    );
  }
}
