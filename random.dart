import 'dart:math';
import 'dart:core';
//problem in installing packages
//import 'package:intl/intl.dart';

const chars = "abcdefghijklmnopqrstuvwxyz0123456789";

String RandomString(int strlen) {
  Random rnd = new Random();
  String result = "";
  for (var i = 0; i < strlen; i++) {
    result += chars[rnd.nextInt(chars.length)];
  }
  return result;
}

Random rndop = new Random();
List<String> op = ['+', '*', '/', '-'];

void main() {
  double intValue = Random().nextInt(40) + 5; // Value is >= 0 and < 40.
  int intVa = Random().nextInt(11) + 1;
  int ls = Random().nextInt(10) + 5;
  double Value = Random().nextInt(15) + 50; // Value is >= 50 and < 150.
  double intValue1 = Random().nextInt(8) - 3; // Value is >= 0 and < 30.
  double Value1 = Random().nextInt(10) + intValue;
  var tobe = op[rndop.nextInt(op.length)];
  List<String> friends = ['Kali', 'Osiri', 'Prizcho', 'Janes', 'okolo'];
  print(tobe);
/*
  for (String friend in friends) {
    print(friend.toUpperCase());
    print("$Value $tobe $intValue");
    print("$Value $tobe $intValue1 =");
    print("$Value1 $tobe $intValue =");
    tobe = op[rndop.nextInt(op.length)];
    //print(tobe);
  }*/
  if (Value <= 17 || intValue1 <= 17) {
    if (Value1 >= 100 && intValue >= Value) {
      print("Nested if archieved.");
    }
  }

  //generating a random number from a given range
  int min = 100;
  int max = 200;
  int randomnum = min + Random().nextInt((max + 1) - min);
  print("Generated Random number between $min and $max is: $randomnum");

  //generating list of numbers(for example we're a list of 15 items)
  List<int> randomList = List.generate(15, (_) => Random().nextInt(150) + 1);
  //print(randomList);
  //Generating from any given randon length
  randomList = List.generate(ls, (_) => Random().nextInt(150) + 1);
  //print(ls);
  //print(randomList);
  //print(RandomString(intVa)); //for printing random char
  for (int i in randomList) {
    //print(i);
  }
  print('Sum is of first two is: ${randomList[1] + randomList[0]}');
  var sum =
      randomList.reduce((a, b) => a + b); //fuction of adding element in a list
  print('The total number of item in my list is: ${sum}');
  //converting of timestamps
  int timestamp = DateTime.now().millisecondsSinceEpoch;
  //print(timestamp);
  int ts = timestamp;
  DateTime tsdate = DateTime.fromMillisecondsSinceEpoch(ts);
  String datetime = tsdate.year.toString() +
      "/" +
      tsdate.month.toString() +
      "/" +
      tsdate.day.toString();
  String time = tsdate.timeZoneName.toString();
  //String fdatetime = DateFormat('dd-MMM-yyy').format(tsdate);
  print(datetime);

  print(time);
  String dattime = DateTime.now().toString();
  var dt = DateTime.now();
  //print(dattime);
  print("${dt.hour}h : ${dt.minute}m : ${dt.second}s on ${datetime} ");
}
