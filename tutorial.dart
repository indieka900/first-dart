//import "dart:math";
import "dart:io";

double promptOp() {
  print("Enter your number");
  double myNum = double.parse(stdin.readLineSync()!);
  return myNum;
}

String prompt(var prompText) {
  print(prompText);
  var answer = stdin.readLineSync();
  return "${answer}";
}

  void gfg1(int g1, [ int? g2 ]) // for null values we use ? character
{
	// Creating function 1
  // we use 'required' for the parameters that should not be left black
	print("g1 is $g1");
	print("g2 is $g2");
}

void gfg2(int g1,  { int? g2, int? g3 })
{
	// Creating function 2
	print("g1 is $g1");
	print("g2 is $g2");
	print("g3 is $g3");
}

void gfg3(int g1, { int g2 : 12 })
{
	// Creating function 3
	print("g1 is $g1");
	print("g2 is $g2");
}

void main() {
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
  print(k + kl);
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
  int l = 1;
  while (l <= 7) {
    //print(l);
    l++;
    //print(l);

  print("Calling the function with optional parameter:");
	gfg1(01);

	// Calling the function with Optional Named parameter
	print("Calling the function with Optional Named parameter:");
	gfg2(01, g3 : 12);

	// Calling function with default valued parameter
	print("Calling function with default valued parameter");
	gfg3(01);
  }

  String mystr = 'Hello';
  String mystr1 = ' people';
  String raws = r'This is my first raw string';
  print(mystr + mystr1 + raws);
}
