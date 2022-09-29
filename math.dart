import "dart:io";

void drawtriangle() {
  print("|\\");
  print("|_\\");
}

void sayHi(String username, int eg) {
  print("Hi $username you\'re $eg old imagine.");
}

double addNumber(double num1, double num2) {
  return num1 + num2;
}

String prompt(var prompText) {
  print(prompText);
  var answer = stdin.readLineSync();
  return "${answer}";
}

void main(List<String> args) {
  print("Enter the color");
  var color = stdin.readLineSync();
  print("Enter the plural noun");
  var pluralNoun = stdin.readLineSync();
  print("Enter the celebrity");
  var celebrity = stdin.readLineSync();
  print("Roses are $color");
  print("$pluralNoun are blue");
  print("I love $celebrity");

  //arrays/lists
  List<int> favNums = [2, 32, 52, 74];
  print(favNums);
  print(favNums[2]);
  favNums[2] = 71;
  favNums.add(18);
  favNums.remove(4);
  print(favNums);
  print(favNums.indexOf(32));

  //function\method
  drawtriangle();
  print("Enter your name: ");
  var myname = stdin.readLineSync();
  print("Enter your age: ");
  int age = int.parse("${stdin.readLineSync()}");
  sayHi("${myname}", age);
  print(addNumber(12.4, 8.125));
  color = prompt("Enter the color: ");
  var name = prompt("Enter the name: ");
  print("The color for $name is $color");
}
