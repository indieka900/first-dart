import 'dart:math';
import 'dart:core';

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
  int ls = Random().nextInt(10) + 5;
  double Value = Random().nextInt(15) + 50; // Value is >= 50 and < 150.
  double intValue1 = Random().nextInt(8) - 3; // Value is >= 0 and < 30.
  double Value1 = Random().nextInt(10) + intValue;
  var tobe = op[rndop.nextInt(op.length)];
  List<String> friends = ['Kali', 'Osiri', 'Prizcho', 'Janes', 'okolo'];
  print(tobe);

  for (String friend in friends) {
    print(friend.toUpperCase());
    print("$Value $tobe $intValue");
    print("$Value $tobe $intValue1 =");
    print("$Value1 $tobe $intValue =");
    tobe = op[rndop.nextInt(op.length)];
    //print(tobe);
  }
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
  print(randomList);
  //Generating from any given randon length
  randomList = List.generate(ls, (_) => Random().nextInt(150) + 1);
  print(randomList);
  print(RandomString(9));
}
