//import "dart:math";
import "dart:io";
import 'dart:math';
//import 'dart:svg';

double promptOp() {
  print("Enter your number");
  double myNum = double.parse(stdin.readLineSync()!);
  return myNum;
}

String prompt(String prompText) {
  print(prompText);
  String answer = stdin.readLineSync()!;
  return "${answer}";
}

void gfg1(int g1, [int? g2]) // for null values we use ? character
{
  // Creating function 1
  // we use 'required' for the parameters that should not be left black
  print("g1 is $g1");
  print("g2 is $g2");
}

void gfg2(int g1, {int? g2, int? g3}) {
  // Creating function 2
  print("g1 is $g1");
  print("g2 is $g2");
  print("g3 is $g3");
}

void gfg3(int g1, {int g2: 12}) {
  // Creating function 3
  print("g1 is $g1");
  print("g2 is $g2");
}

void main() {
  //providing randow numbers
  var intValue = Random().nextInt(30); // Value is >= 0 and < 30.
  print(intValue);
  intValue = Random().nextInt(100) + 50; // Value is >= 50 and < 150.
  print(intValue);
  //data types
  var a = 50;
  int k = 90;
  double kl = 3.9987;
  var b = "My age is";
  String c = "fifty";
  bool isstudent = true;
  isstudent = a != k; //which is true
  //print("Hello people is Joseph in the room");
  print("$b ${a} $isstudent");
  print('${intValue / k}');
  //basics of strings
  /*print(b + " " + c);
  print("Take ${c} shillings");
  print(c[2]);
  print(c.length);
  print(c.indexOf("y"));
  print(c.contains("y"));
  print(c.toUpperCase());*/
  //basics of numbers
  /*a += 24; //increment to 74
  a--; //decrement by 1 to 73
  print(a);
  print(min(a, k)); //can use max()
  print(sqrt(256));*/
  //drawing tringle
  /*print("    /|");
  print("   / |");
  print("  /  |");
  print(" /   |");
  print("/____|");*/

  //user input
  /*print("Enter your first number: ");
  double num1 = double.parse("${stdin.readLineSync()}");
  print("Enter your second number: ");
  double num2 = double.parse("${stdin.readLineSync()}");
  //print(int.parse("${num1}") + int.parse("${num2}"));
  print(num1 + num2);*/

  //if statement
  /*if (c.contains('f')) {
    print("It has the letter f");
  } else {
    print("It do not contain");
  }

  if (c == 1) {
    print("It is one");
  } else if (c != 2) {
    print("It cannot be 12");
  } else {
    print("None of the above");
  }
  double num1 = promptOp();
  //double num1 = 90;
  double num2 = promptOp();
  String op = prompt("Enter your operation -*+/");
  if (op == '+') {
    print(num1 + num2);
  } else if (op == '-') {
    print(num1 - num2);
  } else if (op == '/') {
    print(num1 / num2);
  } else if (op == '*') {
    print(num1 * num2);
  } else {
    print("Invalid operant");
  }
  //switch statement
  switch (op) {
    case '+':
      print(num1 + num2);
      break;
    case '-':
      print(num1 - num2);
      break;
    case '*':
      print(num1 * num2);
      break;
    case '/':
      print(num1 / num2);
      break;
    default:
      print("Invalid operant");
  }*/

  //loops
  //while loop
  int loop = 1;
  while (loop <= 7) {
    //print(loop);
    loop++;
  }
  //print(l);

  /*(print("Calling the function with optional parameter:");
  gfg1(01);

  // Calling the function with Optional Named parameter
  print("Calling the function with Optional Named parameter:");
  gfg2(01, g3: 12);

  // Calling function with default valued parameter
  //print("Calling function with default valued parameter");
  gfg3(01);
*/

  String mystr = 'Hello';
  String mystr1 = ' people';
  String raws = r'This is my first \\ raw string';
  var multilinstr = '''Hello people this 
  is also a multi-
  string''';
  print(multilinstr);
  print(mystr + mystr1 + raws);
  print("Here we come to github account");

  //guesse game
  /* String answer = "Joseph";
  String guese = '';
  int count = 0;

  while (guese != answer) {
    guese = prompt("Guese the name: ");
    count++;
  }
  if (count > 1) {
    print("You won the game after ${count - 1} fails");
  } else {
    print("You won with 0 attempt");
  }*/
//for loop
  List<String> friends = ['Kali', 'Osiri', 'Prizcho', 'Janes', 'okolo'];
  var nonSpecificList = ['Hello', 500, 23.95];

//list filtering
  var km = friends.where((f) => f.startsWith('J')).toList();
  print(km);
  km = friends.where((f) => f.contains("a")).toList();
  print(km);
  km = friends.where((f) => f.endsWith("a")).toList();
  print(km);
  km = friends.where((f) => f.isNotEmpty).toList();
  print(km);
  var data = ['abc', 123, 456, 'def', false, {1, 2, 3}, true, 123.456];

  final nums = data.whereType<double>().toList(); //to list not necessary
  print('Double: $nums');

  var nm = data.whereType<Set>();
  print('Set: $nm');

  final ints = data.whereType<int>();
  print('Integers: $ints');

  final strings = data.whereType<String>();
  print('Strings: $strings');

  final booleans = data.whereType<bool>();
  print('Booleans: $booleans');
  //filtering integer list
  var lis = [-1, 0, 2, 4, 7, 9];
  //km = lis.where((x) => x > 2) --> [4, 7, 9];
  //print('${[-1, 0, 2, 4, 7, 9].where((x) => x > 2) --> [4, 7, 9]}');
  print(km);

  /*for (String friend in friends) {
    print(friend.toUpperCase());
  }
  friends.forEach((element) => print("Hi, ${element.toLowerCase} "));
  for (int i = 0; i < friends.length; i++) {
    print(friends[i].toLowerCase());
  }*/
  //declairing a variable then assigning it with a default value
  // by using (?.), (??), (??=)
  var num;
  print(num ??= 100);
  num = 120;
  print(num);

  //checking if the number is even or odd
  var result = intValue % 2 == 0 ? 'Even' : 'Odd';
  print(result);

  //defining a set
  var greetings = {
    'Hi',
    'Goodafternoon',
    'Morning',
    'Goodnight',
    'Morning'
  }; //reapeted one won't displayed
  print(greetings);

  //defining a map
  var prizes = {'First': 1250, 'Second': 750, 'Third': 500};
  print(prizes['Third']);
  //OR
  var fruits = Map();
  fruits['green'] = 'Mangos';
  fruits['red'] = 'Straberries';
  fruits['yellow'] = 'Banana';
  print(fruits['yellow']);
}
