import 'dart:io';

void main() {
// Loops are useful when we want to do a task over and over again. let's understand it with example.
  int i = 1;
  while (i <= 3) {
    print(i);
    i++; //if i didn't increment then this loop will run infinitly because 1 is always be less than 5
  }
  print('Loop completed');

  // Now using the while loop print the below pattern
  // *
  // **
  // ***
  // ****
  // *****
  // ProTip: You can also take value from the user and based on that value program will print pattern.
  print('=======================================');
  print('Enter the length of pattern');
  int patternLength = int.parse(stdin.readLineSync()!);
  int count = 1;
  late int totalStars;
  while (count <= patternLength) {
    print('*' * count);
    count++;
  }
  print('Pattern has been drawn');

  print('=======================================');
  //Printing the same pattern using for loop
  print('Printed using for loop');
  for (int i = 1; i <= patternLength; i++) {
    print('*' * i);
  }
  print('For loop is terminated');

  print('=======================================');
  //Printing the same pattern using for do while loop
  print('Printed using do while loop');
  int newCount = 1;
  do {
    print('*' * newCount);
    newCount++;
  } while (newCount <= patternLength);
  print('Do while loop has been terminated');

  print('=======================================');
//Write a program that implements the "fizz buzz" algorithm:

  for (int j = 1; j < 15; j++) {
    if (j % 3 == 0 && j % 5 == 0) {
      print('fizz buzz');
    } else if (j % 3 == 0) {
      print('fizz');
    } else if (j % 5 == 0) {
      print('buzz');
    } else {
      print(j);
    }
  }

  print('=======================================');
  print('Continus and break example');
//Write a program that show us the effect of continue and break on the code.
//Here i want to skip 7 & 9 digit and then break the loop after 13
  for (int i = 1; i < 15; i++) {
    if (i == 7 || i == 9) {
      continue; // here this statement will tell the compiler if i is equal to 7 or 9 then skip the iteration.
    } else if (i == 13) {
      break;
    }
    print(i);
  }
}
