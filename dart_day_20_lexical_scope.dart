const global =
    9124; //this can be accessed every where in the program because this is a global variable.
void main() {
  /*
  We have two types of scopes lexical Scope and Global scope. Scope is a block of code inside of curly 
  braces and variable define into lexical scope can't be use outside of that curly braces.
  Global scope can be define once and then can be used every where in your file this can be a single variable 
  or function etc.
  */
  const a = 10;
  print(a);
  if (a > 1) {
    int a = 20;
    print(a);
    /*this will print 20 not 10 which is the value of a initilze above it's because a=20 is in
    nearest lexical scope and compiler will take only those values which are nearest to it.
    */
    print(global); //Global variable outside of main method.
  }
  print('\n===================================\nInner function example');
  //InnerFunction must be define inside other function e.g.
  void innerFunction() {
    print(global);
    print(
        a); //this will gives us the error if we put this innerFunction outside of the main
  }

  innerFunction();
}
