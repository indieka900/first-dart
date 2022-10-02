import 'dart:io';

Map questions = {
  "Who created Python?: ": "A",
  "Which year did python created?: ": "B",
  "Python is tributed to which comedy group?: ": "C",
  "Which is language is this?: ": "D",
  "Guesse my name ": "D"
};

List options = [
  ["A. Guido van Rossum", "B. Elon Musk", "C. Bill gates", "D. Mark"],
  ["A. 1989", "B. 1991", "C. 2000", "D. 2013"],
  ["A. Lonely Island", "B. Smoch", "C. Monty Python", "D. SNL"],
  ["A. Python", "B. JavaScript", "C. Java", "D. Dart"],
  ["A. John", "B. Jared", "C. Hassan", "D. Joseph"]
];
main() {
  newGame();
  while (playAgain()) {
    newGame();
  }
  print("Thanks for playing hope you enjoyed");
}

newGame() {
  int quiznum = 1, scor = 0;
  List input = [];
  for (var i in questions.keys) {
    print("----------------------------");
    print(i);
    for (var k in options[quiznum - 1]) {
      print(k);
    }
    print("Enter (A, B, C or D)");
    String ans = stdin.readLineSync()!;
    input.add(ans.toUpperCase());
    scor += markQuiz(ans, i);
    quiznum += 1;
  }
  displayResult(scor, input);
}

playAgain() {
  print("Do you want to play again");
  String rep = stdin.readLineSync()!;
  if (rep.toUpperCase() == 'YES') {
    return true;
  } else {
    return false;
  }
}

displayResult(int scr, List inn) {
  print("\n----------------------------");
  print("----------------------------\nRESULTS: ");
  print("You scored ${scr} out of ${questions.length} ");
  print(
      "Your score in percentage is: ${(scr / questions.length) * 100} ");
  print("Your choices are: $inn\nThe correct choices are ${questions.values}");
}

int markQuiz(String answer, var k) {
  List correct = [], wrong = [];
  if (answer.toUpperCase() == questions[k]) {
    print("Correct!!!!");
    correct.add(answer.toUpperCase());
    return 1;
  } else {
    print("Wrong!!!!");
    wrong.add(answer.toUpperCase());
    return 0;
  }
}
