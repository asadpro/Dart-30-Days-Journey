import 'dart:math';

void main() {
  // First i will discuss Ternary operator.
  int a = 23;
  int b = 11;
  /*Below ternary operator structure is like this 
  result = condition ? exp1 : exp2 
  Here if condition is true exp1 would be evaluate else exp2 evaluate. e.g. look at the practical example below.
  */
  String result = a > b ? 'A is greater than B' : 'B is greater than A';
  print(result);

  // this is single line comment
  /* this is multi line comment */

  // Expression & statements in dart
  // The key difference b/w both is expression contain value while statement don't contain values itself e.g.

  int number =
      (a + b) * a; //Here a+b is a statement which contain value in itself.
  print(
      number); //this is the statement which do not contain any value but return the value of an expression.

  print('=======================================');
  // Type inference which that compiler will infer the type of variable on itself.
  var rollNo =
      9124; //Here compiler will infer the type as int at the time of compilation.
  dynamic phoneNo = 'I don\'t use phone ';
  print(rollNo);
  print(phoneNo);

  print('=======================================');
  //Let's see the difference b/w Const & Final keyword
  /*When we initilize a variable with const this means that when a value assign to that particular variable 
  it will not be changed latter and will remain same like e.g. the value of PI = 3.14. The final and const are
  both work the same but const variable checks at compile time while final is at execution time.*/

  // final name = 'asad';
  final name =
      'bilal'; //this final variable have not taken any place on memory bcz it's not executed yet.
  const pI = 3.14; //this variable have take place in the memory now.
  print(name);
  print(pI);
  print('=======================================');
  //Let's do the detail example on final, var and const

  /*
 
  String text = 'I like Pizza';
  String topping = 'with tomatoes';
  String favourites = '$text $topping';
  String newText = favourites.replaceAll('Pizza', 'pasta');
  favourites = 'Now I like curry';
  print(newText);
 
 */

  /*Can you guess which variables can be declared as const, final and var while still
  resulting in a valid program? */
  // Remember: prefer const over final over var

  //Let's right that code again with right declaration.

  const text =
      'I like Pizza'; //because text variable take string literal and statement like this will always be const.
  const topping = 'with tomatoes'; // it should be const because it will
  var favourites = '$text $topping';
  final newText = favourites.replaceAll('Pizza', 'pasta');
  favourites = 'Now I like curry';
  print(newText);
}
