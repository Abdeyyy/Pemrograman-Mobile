import 'package:flutter/material.dart';
import 'package:quiz/question.dart';
import 'package:quiz/quiz_brain.dart';

QuizBrain quizBrain = QuizBrain();

void main() {
  runApp(MaterialApp(
    home: Scaffold(
      backgroundColor: Colors.grey,
      body: SafeArea(
        child: Padding(
          padding: EdgeInsetsGeometry.symmetric(horizontal: 10),
          child: Quiz(),))
      ),

    ),
  );
}

class Quiz extends StatefulWidget {
  const Quiz({super.key});

  @override
  State<Quiz> createState() => _QuizState();
}

class _QuizState extends State<Quiz> {

  List<Widget> scoreKeeper = []; 

  void checkAnswer(bool userPickedAnswer) {
    bool correctAnswers = quizBrain.getCorrectAnswer();
    
    if(correctAnswers == true) {
      scoreKeeper.add(Icon(Icons.check, color: Colors.green,));
      print("User benar");
    } else {
      scoreKeeper.add(Icon(Icons.close, color: Colors.red));
      print("User salah");
    }
    quizBrain.nextQuestion();
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Expanded(
          child: Padding(padding: EdgeInsets.all(10),
          child: Center(
            child: Text(quizBrain.getQuestions(),
            style: TextStyle(
              color: Colors.black,
              fontSize: 25,
            ),
            textAlign: TextAlign.center,
            ),
          ),
          ),
        ),
        GestureDetector(
          onTap: () {
            setState(() {
              checkAnswer(true);
            });
          },
          child: Container(
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(5),
              color: Colors.green
            ),
            width: double.infinity,
            height: 100,
            margin: EdgeInsets.all(15),
            child: Center(
              child: Text("True",
              style: TextStyle(
                color: Colors.white,
                fontSize: 20,
              ),),
            ),
          ),
        ),
        GestureDetector(
          onTap: () {
            setState(() {
              checkAnswer(false);
          });
          },
          child: Container(
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(5),
              color: Colors.red
            ),
            width: double.infinity,
            height: 100,
            margin: EdgeInsets.all(15),
            child: Center(
              child: Text("False",
              style: TextStyle(
                color: Colors.white,
                fontSize: 20,
              ),),
            ),
          ),
        ),
        Row(
          children: scoreKeeper,
        )
      ],
    );
  }
}