void main() {
  String firstName = 'asad_';
  String lastName = 'pro_3.1';
  int age = 23;
  int roll = 9124;

  // In this example i will show you the concatenation of two variables.
  print('My name is ${firstName + lastName}');
  print("My age is: $age and RollNo is: $roll");

  // Exercise on String interpolation and concatenation
  double temperature = 20;
  int value = 4;
  String pizza = 'Pizza';
  String pasta = "Pasta";

  /* output should be like:
    The temperature is 20C
    2 plus 2 makes 4
    I like pizza and pasta
    The output should update accordingly as we update 
    the values. e.g. 3 plus 3 makes 6 and so on.
    */
  print('==========================================');

  print('The temperture is ${temperature}C');
  print('$value plus $value makes ${value + value}');
  print('I like $pizza and $pasta');

  // Quiz on Strin escaping
  /*Can you guess what's the output of the following code */
  //Sometimes String contain all special character e.g. the URL then in that case we can use the escape character.
  print('==========================================');

  int a = 10;
  print('$a');
  print('\$a');
  print('\$$a');
  print(
      'C:\Users\Asad_Pro_3.1\Desktop'); //without escape character and Raw String
  print(
      r'C:\Users\Asad_Pro_3.1\Desktop'); //Putting r before string will make it raw string

  /*Printing multi line string one way is to put the string in multiple print method but that's not the 
  good approach instead we can write the same string inside a single print method.
  */

  print('''this is multi line string printing example
  without multi line String you cannot run it any other way''');
  print('==========================================');
  // Basic String operations like uppercase and lowercase.
  String title = 'Uppercase and lowerCase example';
  String stringToNumber = '34';
  /*You cannot assign this value directly to integer variable because dart is strongly 
  type language you have to convert it to int first. */

  print(title.toUpperCase());
  print(title.toLowerCase());
  int newInt = int.parse(stringToNumber);
  print(newInt.runtimeType);
  print('==========================================');
  //Finding and replacing strings
  String food = 'I like pizza and I want you to bring me pizza';
  print(food.contains('pizza')); //this will print bool type result
  // If you want to replace all the pizza words in the string then use replaceAll method for that.
  //The real world application of this is you may want to replace any offensive words in the chap application
  print('Before replacing: $food');
  print('After replacing: ${food.replaceAll('pizza', 'pasta')}');

  String car = 'lamborgini';
  int b = 0;
  int c = 12;
  //lamborgini is not numeric type string so it will not be convert to integer and will gives us error.
  // catching this type of error through exception using try catch only
  try {
    // int newCar = int.parse(car);
    int result = c ~/ b;
  } catch (e) {
    print('replace $e');
  }
  print('==========================================');
  //Now using the try, on, catch clause

  try {
    int result = c ~/ b;
  } on Exception {
    b = 2;
    int result = c ~/ b;
    print('This print statement comes from on Exception');
    print(result);
  } catch (e) {
    print('This is the catch portion of exception catching');
  } finally {
    print('Finally clause must be executed whether code throw errors or not');
  }
}
