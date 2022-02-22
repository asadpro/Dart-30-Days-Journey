void main() {
  /*
  Classes are the user defined datatypes like build-in types of dart i.e. int, double, String, List, Map etc
  but that are not usefull all the time for e.g. drawing line b/w two points, or making cart list, or creating
  car structure for that we need to create classess which we will modify to our own liking.
  */

  // Instance of person class
  Person person1 = Person('asad', 23, 5.7);
  person1.printDescription();
  print('\n===============================\n');
  Person person2 = Person('bilal', 25, 5.6);
  person1.printDescription();

  //Instance of Temperature class
  print('\n===============================\n');

  final tempInCelsius = Temperature.celsius(23);
  final tempInFarenheit = Temperature.farenheit(155);
  print(tempInFarenheit.celsius);
  print(tempInCelsius.celsius);
}

class Person {
  Person(String name, double age, double height)
      : age = age,
        name = name,
        height = height;
/*The constructor above is aka initilizer list and can be used to set the initial
values in member variable aks properties */
  String name;
  double age;
  double height;

  printDescription() {
    print('My name is: $name\nI am $age years old\nI\'m $height meters tall');
  }
}

//Creating a named constructor
/*We know that temperature can be measure using farenheit or celsius we will make two name constructor for 
both of them to distinguish easily */

class Temperature {
  Temperature.celsius(double celsius) : celsius = celsius;
  Temperature.farenheit(double farenheit)
      : celsius = ((farenheit - 32) / 1.8).roundToDouble();
  double celsius;

  double get farenheit => celsius * 1.8 + 32;

  void set farenheit(double farenheit) => celsius = (farenheit - 32) / 1.8;
}
