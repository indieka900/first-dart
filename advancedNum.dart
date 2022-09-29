main() {
  var myLongnum = 234.9875647;
  print(myLongnum.toStringAsFixed(2)); //roundups to 2 decimal places
  print(myLongnum.toStringAsExponential());
  print(myLongnum.sign);
  print(myLongnum.truncateToDouble());
  print(myLongnum.toStringAsPrecision(5));
  print(myLongnum.ceilToDouble());
  print(myLongnum.roundToDouble()); // round up to a decimal number

//checks if the string can be double
  double? tr = double.tryParse('234uss7638329');
  print(tr);//prints null because this variable cannot be double
  double? tr1 = double.tryParse('23638329.901');
  print(tr1);

//converting int to double
  int tr2 = 12435;
  print(tr2.toString());
}
