void main() {
  /*Structuring of below line 
  String --> is a variable type
  name --> is name of the variable
  = --> is the assignment operator which is use to assign the value 'asad' to the name variable which
  take string only. we will talk about latter on data types in detail.
  ; --> and at last semicolon is known as terminator which tells the compiler that this is the end of the line
   */
  String name = 'asad'; //Initilizing variable
  String address; //Declaring variable
  address = 'peshawar'; //the value peshawar is also known as string literal.
  int dollors = 444;
  int rupees = 157;

  print("I have \$$dollors");
  print(
      name); /*print is a special method which take string as a parameter to show it on console print method
  used only in testing mode not in production mode(the actual app made for use)
*/
  print(
      '$name and $address'); /*if you want to print multiple variable through print function then you can use 
   */
  print(
      '$dollors+$rupees without curly braces'); /*if you want to add two number in same print method then this approach will not 
  because compiler will take + operator as string then in that case you have to use the curly braces for that*/

  print('${dollors + rupees} with curly braces');

  /* Initilizing variable means when we assign value to that variable while Declaration means without declaring 
  any value to that specific variable.
  */
  
}
