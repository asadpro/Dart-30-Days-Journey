var counter =
    1; //Global mutable state variable which change overtime.ignore this type of variable.
void starFunction() {
  print('*' * counter);
  counter++;
}

void main() {
  starFunction();
  /*
  this is not a pure function means when function return different values every time we call 
  the same way. 
  */
  starFunction();
  starFunction();
}
