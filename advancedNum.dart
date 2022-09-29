main() {
  var myLongnum = 234.9875647;
  print(myLongnum.toStringAsFixed(2)); //roundups to 2 decimal places
  print(myLongnum.toStringAsExponential());
  print(myLongnum.sign);
  print(myLongnum.truncateToDouble());
  print(myLongnum.toStringAsPrecision(5));
  print(myLongnum.ceilToDouble());
  print(myLongnum.roundToDouble()); // round up to a decimal number
}
