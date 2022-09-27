import 'dart:math';
import 'dart:io';

Random rndop = new Random();
List<String> op = ['+', '*', '/', '-'];


class MathQuestion {
  String question = '';
  double answer = 0;

  MathQuestion(String aquation, double _answer) {
    this.question = aquation;
    this.answer = _answer;
  }
}

main(){
  double intValue = Random().nextInt(30) + 5; // Value is >= 0 and < 30.
  double Value = Random().nextInt(100) + 50; // Value is >= 50 and < 150.
  double intValue1 = Random().nextInt(8) - 3; // Value is >= 0 and < 30.
  double Value1 = Random().nextInt(10) + intValue;
  double intValue2 = Random().nextInt(12) + intValue1; // Value is >= 0 and < 30.
  double Value2 = Random().nextInt(5) / 10;
  double intValue3 = Random().nextInt(25) + 5; // Value is >= 0 and < 30.
  double Value3 = Random().nextInt(150) - Value;

  int score = 0, count = 1, count1 = 1;
  //creating lists of questions
  List<MathQuestion> question = [
    MathQuestion("18 + 3.5", 21.5),
    MathQuestion("500 / 12.5", 40),
    MathQuestion("3 * 16.8", 50.4),
    MathQuestion("118.243 - 62.071", 56.172),
    MathQuestion("$intValue1 + $Value", Value + intValue1),
    MathQuestion("$Value3 - $Value1", Value3 - Value1),
    MathQuestion("$intValue3 / $Value2", intValue3 / Value2),
    MathQuestion("$Value1 / $intValue", Value1 / intValue),
    MathQuestion("$intValue2 + $Value", intValue2 + Value),
    MathQuestion("$intValue3 * $Value1", intValue3 * Value1),
  ];
  List<String> correctQuizs = [];
  List<String> wrongQuizs = [];
  List<double> correctanswer = [];

  for (MathQuestion quiz in question) {
    //var tobe = op[rndop.nextInt(op.length)];
    print("What is the answer for ${quiz.question} ");
    double ans = double.parse(stdin.readLineSync()!);
    if (ans == quiz.answer) {
      correctQuizs.add(quiz.question);
      score++;
    } else {
      wrongQuizs.add(quiz.question);
      correctanswer.add(quiz.answer);
    }
  }
  double percentage = score / question.length * 100;
  print("Question that you got correct are:");
  for (String i in correctQuizs) {
    print(i);
  }
  print("and you failed:");
  for (String w in wrongQuizs) {
    print('$count1) $w');
    count1++;
  }
  print("where there respective answers were");
  for (double k in correctanswer) {
    print("$count) $k");
    count++;
  }
  print("You scored $score out of ${question.length} which is $percentage%");
}