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

//creating a book class
class Book {
  //attributes
  String tittle = '';
  String auther = '';
  int pagenum = 0;
  int charnum = 0;
  //creating a constractor
  Book(String _tittle, String Auther, int _numpages, int _numchar) {
    this.tittle = _tittle;
    this.auther = Auther;
    this.pagenum = _numpages;
    this.charnum = _numchar;
  }
  //creating methods
  String longStory() {
    if (this.pagenum > 100) {
      return ("The book has a long story");
    } else {
      return ("The story in this book is not that long");
    }
  }
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
  /*print(someStudent.fullname);
  print(someStudent.initials);*/
  //toString() method
  print(someStudent); // same as calling student.toString()
  //print("The student is: $someStudent");

  //Creating book object
  /*Book kigogo = Book("Kigogo", "Henry", 97, 15);
  Book kk = Book("Blossoms", "Ole Kulet", 387, 21);
  print(kigogo.charnum);
  print(kk.tittle);
  print(kigogo.longStory());
  print(kk.longStory());*/

  //creating quiz game
}
