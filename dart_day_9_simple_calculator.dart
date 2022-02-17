import 'dart:io';

void main(List<String> args) {
  /*Given the following incomplete program */
  const a = 4;
  const b = 8;
  const op = Operation.minus;

  //The below program is static we can make it dynamic see the solution below it.

  switch (op) {
    case Operation.divide:
      print('The divison operation of $a upon $b is: ${a / b}');
      break;
    case Operation.plus:
      print('The addtion operation of $a upon $b is: ${a + b}');
      break;
    case Operation.minus:
      print('The subtraction operation of $a upon $b is: ${a - b}');
      break;
    case Operation.multiply:
      print('The mutliplication operation of $a upon $b is: ${a * b}');
      break;
    default:
      print('Wrong operation');
  }
  //Dynamic calculator which takes input from user without define implicitly.

  print('=====================================');
  print('No see the dynamic way of doing the same program');
  print('Enter operand 1');
  int op1 = int.parse(stdin.readLineSync()!);
  print('Enter operand 1');
  int op2 = int.parse(stdin.readLineSync()!);
  print('Enter operation to be performed');
  Operation.values.forEach((element) {
    List<String> signs = ['+', '-', '*', '/'];
    int index = 1;
    print('${element.index}:  ${signs[element.index]}');
  });
  String operation = stdin.readLineSync()!;
  switch (operation) {
    case '+':
      print('The addition operation of $op1 upon $op2 is: ${op1 + op2}');
      break;
    case '-':
      print('The minus operation of $op1 upon $op2 is: ${op1 - op2}');
      break;
    case '*':
      print('The multiplication operation of $op1 upon $op2 is: ${op1 * op2}');
      break;
    case '/':
      print('The divison operation of $op1 upon $op2 is: ${op1 / op2}');
      break;
    default:
      print('Wrong operation');
  }
}

enum Operation { plus, minus, multiply, divide }
