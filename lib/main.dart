import 'package:flutter/material.dart';
import 'package:quiz_app/quiz.dart';
import 'package:quiz_app/result.dart';

main() => runApp(MyApp());

class MyApp extends StatefulWidget {
  @override
  _MyAppState createState() => _MyAppState();
}

Color w = Colors.white;
Color b1 = Colors.black;

class _MyAppState extends State<MyApp> {
  Color w = Colors.white;
  Color b = Colors.black;
  bool isswitch = false;
  int _questionsindex = 0;
  int _totalscore = 0;
  int num0, num1, num2 = 0;

  void _resetquiz() {
    setState(() {
      _questionsindex = 0;
      _totalscore = 0;
      num0 = 0;
      num1 = 0;
      num2 = 0;
    });
  }

  void answerquestions(score) {
    if (_questionsindex == 0)
      num0 = score;
    else if (_questionsindex == 1)
      num1 = score;
    else if (_questionsindex == 2) num2 = score;
    _totalscore += score;
    setState(() {
      _questionsindex += 1;
    });
    print(_questionsindex);
    print("answer chooce");
    print(_totalscore);
  }

  final List<Map<String, Object>> _quetions = [
    {
      'questiontext': 'What\'s your favorite color',
      'answers': [
        {'text': 'blue', 'score': 10},
        {'text': 'red', 'score': 20},
        {'text': 'yellow', 'score': 30},
        {'text': 'black', 'score': 40}
      ]
    },
    {
      'questiontext': 'What\'s your favorite animal',
      'answers': [
        {'text': 'dog', 'score': 10},
        {'text': 'rabbit', 'score': 20},
        {'text': 'elephant', 'score': 30},
        {'text': 'lion', 'score': 40}
      ]
    },
    {
      'questiontext': 'What\'s your favorite instructor',
      'answers': [
        {'text': 'mano', 'score': 10},
        {'text': 'hano', 'score': 20},
        {'text': 'fano', 'score': 30},
        {'text': 'lano', 'score': 40}
      ]
    },
  ];

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          title: Text("QUIZ APP",style: TextStyle(color: w),),
          actions: [
            Switch(
              value: isswitch,
              onChanged: (value) {
                setState(() {
                  isswitch = value;
                  print(isswitch);
                  if (isswitch == true) {
                    b1 = Colors.white;
                    w = Colors.black;
                  }
                  if (isswitch == false) {
                    b1 = Colors.black;
                    w = Colors.white;
                  }
                });
              },
              activeColor: Colors.white,
              inactiveThumbColor: Colors.black,
              inactiveTrackColor: Colors.black,
            ),
          ],
        ),
        body: Container(
          color: w,
          child: _questionsindex < _quetions.length
              ? Quiz(_quetions, _questionsindex, answerquestions)
              : Result(_resetquiz, _totalscore),
        ),
        floatingActionButton: FloatingActionButton(
          child: Icon(Icons.arrow_back_sharp,color: w,),
          onPressed: () {
            if (_questionsindex == 0)
              _totalscore -= num0;
            else if (_questionsindex == 1)
              _totalscore -= num1;
            else if (_questionsindex == 2) _totalscore -= num2;
            setState(() {
              if (_questionsindex > 0) {
                _questionsindex--;
              }
            });

          },
        ),
      ),
    );
  }
}
