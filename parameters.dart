import 'dart:io';

main() {
  print("Enter the height of the solid: ");
  int he = int.parse(stdin.readLineSync()!);
  print("Do you have breadth of the solid(y/n)");
  String an = stdin.readLineSync()!;
  if (an.toLowerCase() == 'y') {
    print("Enter the breadth of the object: ");
    int br = int.parse(stdin.readLineSync()!);
    print("Do you have length of the object(y/n) ");
    String ans = stdin.readLineSync()!;
    if (ans.toLowerCase() == 'y') {
      print("Enter the length of the solid: ");
      int ln = int.parse(stdin.readLineSync()!);
      findVolume(he, breath: br, length: ln); //overides the default values
    } else {
      findVolume(he,
          breath:
              br); //uses default value for length  and overides that of breadth with the new one
    }
  } else {
    print("Do you have length of the object(y/n) ");
    String ans = stdin.readLineSync()!;
    if (ans.toLowerCase() == 'y') {
      print("Enter the length of the solid: ");
      int ln = int.parse(stdin.readLineSync()!);
      findVolume(he,
          length:
              ln); //use the default values for the breath and overides length
    } else {
      findVolume(he);
    }
  }

  // findVolume(9,
  //     length:
  //         17);
  // findVolume(5, breath: 12, length: 30);
}

findVolume(int height, {int breath = 20, int length = 14}) {
  double volume = (height * breath * length) / 3;
  print(
      "The volume is ${volume.round()} for the $height, $length and $breath \n");
}
