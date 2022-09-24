enum StudentType { seniour, juniour }

/* class Student {
    String firstName = "";
    String surName= "";
    //StudentType type;
    getFullname(){
        return "$firstName $surName";
    }
}*/

/*class Seniour extends Student {
    Seniour(firstName, surName): super(firstName, surName);
}

class Juniour extends Student {
    Juniour(firstName, surName): super(firstName, surName);
}*/

class Student {
  String firstName;
  String surName;

  /* Student (String firstName, String surName){
        this.firstName = firstName;
        this.surName = surName;
    }*/
  static String studentlabel = "Student\'s name: ";
  Student(this.firstName, this.surName);
  //Student.anonymous() {}

  String get fullname => "$studentlabel $firstName $surName";
  String get initials => "${firstName[0]}. ${surName[0]}.";

  /*factory Student.fromType([StudentType type]) {
        switch(type){
            case StudentType.seniour:
            return new Seniour();
            case StudentType.juniour:
            return new Juniour();
        }
        return Student();
    }*/
  /*String getFullname(){
        return "$firstName $surName";
    }*/
}

//class inheritance
class Seniour extends Student {
  String level;
  Seniour(String firstName, String surName, this.level)
      : super(firstName, surName);
  @override
  String toString() => "$fullname, also known as $level";
}

void main() {
  //print(StudentType.values);
  /*Student someStudent = new Student();
    someStudent.firstName = "Joseph";
    ..firstName = "Joseph";
    ..surName = "Omuyaku";*/
  Seniour someStudent = new Seniour("Joseph", "Indieka", "jose254");
  //someStudent.type = StudentType.seniour;
  //print(someStudent.type.index);
  //print(someStudent.getFullname());
  print(someStudent.fullname);
  //changing ststic field
  Student.studentlabel = "name:";
  print(someStudent.fullname);
  print(someStudent.initials);
  print("Hello");
}
