class Student {
  //underscore makes the variable private that is it can be accessed inside a class
  late double _gpa;
  late bool _isPassing;
  late String university;

  //defining methods(Which is a function inside a class)
  printUni() {
    print(university);
  }

//A constructor lets us easily set values for a new class when we create a class
  Student({gpa, isPassing ,university}) {
    this._gpa = gpa;
    this._isPassing = isPassing;
    this.university = university;
  }
  //OR
  /*Student({this._gpa, this._isPassing, this.university});*/

  //setter is method that allows you to change a variable
  setGpa(double gpa) {
    if (gpa < 0) throw Exception("GPA cannot be negative");
    if (gpa < 3.0)
      _isPassing = false;
    else
      _isPassing = true;

    _gpa = gpa;
  }

  //getter used to show/retrieve a private variable
  double get gpa => _gpa;
  bool get isPassing => _isPassing;
}

main() {
  //Student newStudent = Student();
  Student newStudent = Student(gpa:2.0, university: 'JKUAT');
   //newStudent.university = 'Kenyatta University';
   //newStudent.setGpa(3);
   print(newStudent._isPassing);
   newStudent.printUni();
}
