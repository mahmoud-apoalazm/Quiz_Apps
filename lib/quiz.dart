import 'package:flutter/material.dart';
import 'quetions.dart';
import 'answer.dart';
class Quiz extends StatelessWidget {
  final List<Map<String, Object>> quetions;
  final int questionsindex;
  final Function answerquestions;

 Quiz(this.quetions, this.questionsindex, this.answerquestions) ;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Questions(quetions[questionsindex]["questiontext"]),
        ...(quetions[questionsindex]["answers"] as List<Map<String,Object>>)
            .map((answer) {
          return Answer(()=>answerquestions(answer["score"]), answer["text"]);
        }).toList(),

      ],
    );
  }
}
