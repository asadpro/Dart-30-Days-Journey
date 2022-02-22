void main() {
  Dog dog = Dog(7);
  dog.sleep();
  print('============================');
  Dog dog2 = Dog(29);
  dog.sleep();
}

class Animal {
  void sleep() => print('Sleep 7 hours');
}

class Dog extends Animal {
  Dog(this.age);
  int age;
  /*
  Method overriding means we can use the functionality of parent class method but we can also extends the
  functionality of overriden method in child class.
  */
  @override
  sleep() {
    super.sleep();
    print('Sleep for more 3 hours because your are under 18');
  }
}
