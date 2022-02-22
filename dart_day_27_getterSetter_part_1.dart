class Result {
  Result(this._marks, this.name);
  int _marks;
  var rollNo = 9124;
  static const religion =
      'Islam'; // this variable will never change and declare statically
  String name = 'AsadBukhari';

//getter method to get marks from another source file
  int get gettingMarks => _marks;
//Setter method to set the value of class member from another file

  void set settingName(String name) => this.name = name;
  void set settingMarks(int marks) => this._marks = marks;

  displayMarks() {
    return '$name marks is : $_marks';
  }

  displayFullInfo() {
    print('\n==========================');
    print('Mr $name marks is : $_marks');
    print('$name Your roll No is : $rollNo\nYour religion is : $religion');
  }
}

void main() {
  Result result = Result(589, 'AsadPro');
  //We can also change the value of marks in the same source file
  result._marks = 680;
  //Now if we print it will be updated with 680
  print(result._marks);
  //Now let's change from outside this source file goto the part 2 and change it's value like we do here.

  result.displayMarks();
}
