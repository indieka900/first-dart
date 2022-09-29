loginForm(username, password) {
  String atemptUsername = 'Joseph';
  var attemptPassword = 'Joseph123';

  if (attemptPassword == password) {
    if (atemptUsername.toLowerCase() == username.toLowerCase()) {
      print("Login succesfully");
    } else {
      print("Invalid credetials");
    }
  } else {
    print("Invalid credetials");
  }
}

checkAge(age) {
  if (age > 18) {
    if (age > 100)
      print("The oldest one");
    else
      print("A adult but not old enough");
  } else
    print("Still under age");
}

main() {
  loginForm('joseph', 'Joseph123');
  loginForm('Joseph1', 'Joseph123');
  checkAge(12);
  checkAge(42);
  checkAge(120);
}
