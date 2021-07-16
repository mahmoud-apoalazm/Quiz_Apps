import 'package:flutter/material.dart';

class Answer extends StatelessWidget {
  final String answertext;
  final Function x;

  Answer(this.x, this.answertext) ;

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      child: RaisedButton(
        color: Colors.blue,
        textColor: Colors.white,
        child: Text( answertext ,style: TextStyle(fontSize: 25),),
        onPressed: x,
      ),

    );
  }
}
