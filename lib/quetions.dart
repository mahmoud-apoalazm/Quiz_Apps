import 'package:flutter/material.dart';
import 'main.dart';
class Questions extends StatelessWidget {
  final String questionstext;

  Questions(this.questionstext);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.all(10.0),
      width: double.infinity,
      child: Text(
        questionstext,
        style: TextStyle(
          fontSize: 30,fontWeight: FontWeight.bold,color: b1,
        ),
        textAlign: TextAlign.center,
      ),
    );
  }
}
