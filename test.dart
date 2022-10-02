import 'dart:io';

main() {
  //print(whilefunc());
  // var ss = '4';
  // int k = int.parse(ss);
  // print(k);
  
}

whilefunc() {
  print("Enter y/n");
  String s = stdin.readLineSync()!;
  if (s.toLowerCase() == 'y') {
    return true;
  } else
    return false;
}
