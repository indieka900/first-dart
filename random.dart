import 'dart:math';

Random rndop = new Random();
List<String> op = ['+', '*', '/', '-'];

void main() {
  double intValue = Random().nextInt(40) + 5; // Value is >= 0 and < 30.
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
}
