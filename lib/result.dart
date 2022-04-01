// ignore_for_file: prefer_const_constructors_in_immutables, use_key_in_widget_constructors, prefer_const_constructors

import 'package:flutter/material.dart';

class Result extends StatelessWidget {

  final int resultScore;
  
  Result(this.resultScore);

  String get resultPhase{
    String resultText;
    if (resultScore <= 12){
      resultText = "You are osame and inocent!";
    }
    else if (resultScore <= 16){
      resultText = "Preaty Likable!";
    }
    else if (resultScore <= 20){
      resultText = "You are Strange?";
    }
    else{
      resultText = "You are so bad!";
    }
    return resultText;
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        Center(
          child: Text(
            resultPhase,
            style: TextStyle(fontSize: 35,fontWeight: FontWeight.bold),
            textAlign: TextAlign.center,
          ),
        ),
        Center(
          child: Text(
            "Your score : "+resultScore.toString(),
            style: TextStyle(fontSize: 25,fontWeight: FontWeight.bold),
            textAlign: TextAlign.center,
          ),
        ),
      ],
    );
  }
}
