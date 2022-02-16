void main() {
  int a = 2;
  int b = 5;

  //First i will discuss Relational operators.
  print(a ==
      b); //Check whether a is equal to b or not and will return result in bool type
  print(a != b); //check whether a is not equal to b.
  print(a >= b); //Check whether a is greater or equal to b.
  print(a <= b);
  print(a < b); //Checking a less than b if true return result in bool.
  print(a > b);

  // Sometime we need to check two expression at the same time then we need logical operator for that e.g.
  print(a < b ||
      a > b); //this is OR operator if either one are true the result will be true.
  print(a < b &&
      a > b); //this is AND operator if either of one is false the result will be false.
}
