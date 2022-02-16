import 'dart:io';

void main() {
  // control flow let us decide what to do when a certain condition is true let's take a look with example.
  //Given ticket based on person age.
  print('Enter your age: ');
  /*this take the input from user and will convert that string into int by using the parse method*/
  final age = int.parse(stdin.readLineSync()!);
  if (age < 16) {
    print('Junior ticket');
    print('Price is \$8');
  } else if (age >= 60) {
    print('Senior ticket');
    print('Price is \$6');
  } else {
    print('Regular ticket');
    print('Price is \$10');
  }
  print('===Enjoy your visit===');

  print('=======================================');

  //if/else Statement quiz try it on yourself before going on to the solution
  /* Define two integer variables called 'netSalary' and 'expenses'.
  
  Then Write a program that prints different sentences depending on these conditions:
  if netSalary > expenses
    you have saved $(netSalary - expenses) this month 

  otherwise if expenses > netSalary
    you have lost $(expenses - netSalary) this month
  
  otherwise
    your balance hasn't changed.
  
  Then verify that the program works correctly for 
  different values of 'netSalary' and 'expenses'*/

  print('What was your expenses this month? ');
  int expenses = int.parse(stdin.readLineSync()!);
  int netSalary = 95000;

  if (netSalary > expenses) {
/*Below i have used the minus operator before the expression because result can be in negative so i inverse it */
    print('you have saved ${-(expenses - netSalary)} this month');
  } else if (expenses > netSalary) {
    print('you have lost ${expenses - netSalary} this month');
  } else {
    print('Your balance hasn\'t changed');
  }
}
