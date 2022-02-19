void main() {
  /*Till now we have work in main function so far but this may not be the right choice for always
  sometime we need to break a big problem into small no of problem and then solve those little tiny problem 
  one by one and assemble them.
  e.g. someone give you a problem of building a car so you cannot build it all at once instead you can
  break down the problem like at initial state you build the body structure of the car then wheel, then engine
  and vice versa. So by doing this we have break down the most complex problem into sub problems. So in
  programming lingo you have break down the problem. Now you can create functions for every task like
  buildBody(), buildEngine() and buildTiers() these are different methods to solve the above problem.
  */

  //This is a function which print a statement and do nothing else.
  simpleFunction();

  String name = 'asad';
  String greeting = 'How are you?';

  String name2 = 'bilal';
  String greeting2 = 'Asta la vista';

  //now tradition way to print these multiple time is
  print('My name is $name assalam-ulaikum $greeting');
  //But we can print these by functions which take parameters
  print('My name is $name2 assalam-ulaikum $greeting2');
  print('\n===================================');
  print('Below these statements are print through functions');
  parameterizeFunction(name, greeting);
  parameterizeFunction(name2, greeting2);

  /*Now so far we have learned about function now i will create a function which gives us some output
  in by using return keyword.*/

  int num1 = 23;
  int num2 = 43;
  //I want add these two number using function. So do we do that?
  print('\n=============================');
  print('suming two number:');
  print(adding2numbers(num1, num2));

  //Now this is the time to do exercise on functions
/*
  Write a function called 'sum' that takes a list of values as an arguments  
  ('List<double>'), and returns the sum of all the values.
  
  Then call the function multiple times with different input
  values (example: '[]', '[1,2]','[1,2,3,4]') and print the result.

*/
  print('\n================================');
  print('printing two elements');
  print(sumQuiz(values: [1, 2]));
  print('printing empty list');
  print(sumQuiz(values: []));
  print('printing list of 4 length');
  print(sumQuiz(values: [1, 2, 3, 4]));
} //THIS IS THE ENDING OF MAIN FUNCTION

double sumQuiz({List<double>? values}) {
  //putting parameter inside curly braces will make it optional
//We can also make a single variable optional at the arguments of function.
  double sumofAll = 0;
  if (values!.isNotEmpty) {
    values.forEach((element) =>
        sumofAll += element); //You can also use for In loop as well.

  }
  return sumofAll;
}

int adding2numbers(int number1, int number2) {
  return number1 +
      number2; //This statement will tell compiler to add these two number and return result.
}

void simpleFunction() {
  print(
      'This is a simple function which takes no parameter you can call it any where multiple times');
}

void parameterizeFunction(String name, String greeting) {
  print('My name is $name assalam-ulaikum $greeting');
}
