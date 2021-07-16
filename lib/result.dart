import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'main.dart';
class Result extends StatelessWidget {
  final b;
  final int totalscore;

  Result(this.b, this.totalscore);

  String get resultphrase {
    String resultText;
    if (totalscore >= 60) {
      resultText = "you are good";
    } else if (totalscore >= 40) {
      resultText = "you are nobad";
    } else {
      resultText = "you are bad";
    }

    return resultText;
  }

  @override
  Widget build(BuildContext context) {
    return Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Text(
          "The score is $totalscore",
          style: TextStyle(fontSize: 30,color: b1),
          textAlign: TextAlign.center,
        ),
        Text(
          resultphrase,
          style: TextStyle(fontSize: 30,color: b1),
          textAlign: TextAlign.center,
        ),
        FlatButton(
            onPressed: b,
            child: Text(
              "Restart the App",
              style: TextStyle(fontSize: 30, color: Colors.blue),
            ))
      ],
    ));
  }
}
