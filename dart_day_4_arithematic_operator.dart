void main() {
  int a = 10;
  int b = 2;
  // Below are the very basic operator you may all know them.
  int sum = a + b;
  int subtract = a - b;
  double divide = (a /
      b); /*here type cast is important bcz divide operator convert a on left to double which in result 
      a/b gives us the double value or we can change the type of divide to double or we can also 
      / operator to ~/ which will return only int no double e.g.*/
  int divide1 = a ~/ b;

  int multiply = a * b;
  int module = a % b;

  int submit = a + b;
  // print(submit);j
  int submit2 = -(a +
      b); //The minus operator here will reverse the sign of value if its - will become + e.g.
  // print(submit2);
  int submit3 = -(b - a);
  // print(submit3);
  int submit4 = b - a;
  // print(submit4);

  // Simple temperature conversion problem

  /*
  Given the following:
  double tempFarenheit = 86;
  
  Write a program to convert the temperature to celsius, using below formula:
  Farenheit to Celsius (F - 32)/1.8 = C
  The output of this program should be 
  86F = 30C
   */
  double tempFarenheit = 186;
  print('================================');
  print('Conversion of Farenheit to celsius');
  print('${(tempFarenheit - 32) / 1.8}C');
  // Below toStringAsFixed method will  show fraction point at most 1.
  print('${((tempFarenheit - 32) / 1.8).toStringAsFixed(1)}C');

  print('================================');
  // Increment and decrement operator
  int increment = 12;
  int decrement = 24;
  print('Before increment: $increment');
  print('After increment by 1: ${increment += 1}');
  print('Before decrement: $decrement');
  print('After decrement by 10: ${decrement -= 10}');
}
