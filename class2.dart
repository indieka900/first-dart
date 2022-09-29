class Animal {
  String color = "Black";
  eat() {
    print("Animal is eating");
  }
}

class Cow extends Animal {
  String breed = 'African';
  String color = 'White';
  @override
  eat() {
    super.eat();
    print("Cow is eating");
  }

  colr(color) {
    print(color);
  }
}

main() {
  var cow = Cow();
  cow.eat();
  cow.colr('Brown');
}
