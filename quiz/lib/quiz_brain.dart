import 'package:quiz/question.dart';

class QuizBrain {
  int questionsNumber = 0;

  List<Question> _question = [
    Question(q: "Apakah 11 adalah bilangan prima?" , a: true),
    Question(q: "Planet keempat dalam tata surya adalah planet mars" , a: true),
    Question(q: "Planet keempat dalam tata surya adalah planet mars" , a: false)
  ];

  void nextQuestion() {
    if(questionsNumber < _question.length - 1) {
      questionsNumber++;
    }
  }

  String getQuestions () {
    return _question[questionsNumber].questionsText;
  }
  bool getCorrectAnswer () {
    return _question[questionsNumber].questionsAnswer;
  }
}
