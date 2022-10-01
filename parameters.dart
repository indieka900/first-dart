main() {
  findVolume(4);//use the default values for the breath and lenght
  findVolume(9, length: 17); //uses default value for breath  and overides that of length with the new one
  findVolume(5, breath: 12, length: 30); //overides the default values
}

findVolume(int height, {int breath = 20, int length = 14}) {
  double volume = (height * breath * length) / 3;
  print("The volume is ${volume.round()} for the $height, $length and $breath \n");
}
