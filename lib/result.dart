// ignore_for_file: prefer_const_constructors_in_immutables, use_key_in_widget_constructors, prefer_const_constructors, deprecated_member_use

import 'package:flutter/material.dart';

class Result extends StatelessWidget {
  final int resultScore;
  final int resultThirdScore;
  final int resultFirstScore;
  final int resultSecondScore;
  final Function resetHandeler;

  Result(
      {required this.resultScore,
      required this.resultThirdScore,
      required this.resultFirstScore,
      required this.resultSecondScore,
      required this.resetHandeler});

  String get resultPhase {
    String resultText;
    if (resultScore == 3) {
      resultText = "Congratulation!!! You are very briliant.";
    }else {
      resultText = "You are not correct answer!";
    }
    return resultText;
  }

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(6.0),
      child: Container(
        child: Card(
          elevation: 10,
          child: Center(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Text(
                    resultPhase,
                    style: TextStyle(fontSize: 25, fontWeight: FontWeight.bold),
                    textAlign: TextAlign.center,
                  ),
                ),
                Text(
                  "Your score : " + resultScore.toString(),
                  style: TextStyle(fontSize: 18),
                  textAlign: TextAlign.center,
                ),
                Text(
                  "Your first score : " + resultFirstScore.toString(),
                  style: TextStyle(fontSize: 18),
                  textAlign: TextAlign.center,
                ),
                Text(
                  "Your second score : " + resultSecondScore.toString(),
                  style: TextStyle(fontSize: 18),
                  textAlign: TextAlign.center,
                ),
                Text(
                  "Your Third score : " + resultThirdScore.toString(),
                  style: TextStyle(fontSize: 18),
                  textAlign: TextAlign.center,
                ),
                Padding(
                  padding: const EdgeInsets.all(20.0),
                  child: OutlinedButton(
                    style: OutlinedButton.styleFrom(
                        primary: Colors.orange,
                        side: BorderSide(color: Colors.green, width: 0.5)),
                    child: Text("Restart Quiz"),
                    onPressed: () {
                      resetHandeler();
                    },
                  ),
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
