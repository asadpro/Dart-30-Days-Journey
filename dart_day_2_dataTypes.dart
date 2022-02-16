void main() {
  // In this tutorial i will discuss various types of datatypes and their usage.
/*Strings
  int 
  double
  num
  object
  var 
  dynamic
  Iterable
  List
  bool*/

  // Int datatypes contain only numerical value such as positive number or negative number [...-2,-1,0,1,2....]e.g
  int price = 23;
  print(price);

  /*Double dataType accept double aka floating pointing values e.g 3.41 etc. It can also take integer value but the compiler will 
convert that integer value into int e.g if you write 3 it will become 3.0 at the time of execution of program*/

  double rollNo = 3.145;
  double rollNo2 = 3; // it equal to double rollNo2 = 3.0;
  print('$rollNo2 $rollNo');

  /*num datatype can access both int and double/floating type value you can think of it as parent of int and
  double*/
  num integer = 0311;
  num floating = 3.1232;
  print("integer value $integer and floating value is $floating");

  var name = 'asad';
/*In simple dynamic is not a type it's just disable the type checking */
  dynamic name2 = 'asad';
  print('value of var $name and value of dynamic $name2');
  /*first understand the difference b/w var and dynamic. you make think that they both are the same but 
  they are not when we initilize a varible with String value then that var keyword will be convert to string
  for permanent and will not be change but if you initlize a variable with dynamic then the value of
  dynamic variable can be changed over time e.g  */

  name2 = 23; //this will work because it is dynamic
  print('Changing the value of name2 from string to integer $name');
  // name = 23; uncomment this and you will see the difference b/w both var and dynamic
  /* this will not work because var has been change into String once and will be
  permanently be string.*/

  // Beginner exercise
  /*Create some variable to define my 'firstName', 'lastName', 'age', 'height' with the following values */
  print("======================================");
  print('Exercise for beginners');
  String firstName = 'asad';
  String lastName = 'khan';
  int age = 23;
  double height = 5.7;

  print(
      "firstName: $firstName \n lastName: $lastName \n Age: $age \n Height: $height");
}
