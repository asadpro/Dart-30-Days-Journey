void main() {
  final greeting = () => 'Hello how are you?';
  print(
      greeting); //If we print it without parenthesis of greeting then this will print closure
  //To print the body of anonymous function we must need to provide the parenthesis
  print(greeting());

  print('\n================================');
  //We can also pass arguments to anonomous function like this:

  final paramGreeting = (String name) => 'Hello $name';

  //we can also pass anonymous function as an arguments to other function.

  anotherFunction(String Function(String) greet, name) {
    print(greet(name));
    print('How are you');
  }

  anotherFunction(paramGreeting, 'Asad');
}
