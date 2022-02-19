void main() {
  int x =
      -1; //if you want to put null value inside of variable then use Null class instead of datatype.
  int? b; // we can also initilize null like this
  // if (x > 0) { //We can also write this code like the way right below this code
  //   b = x;
  // }
  x > 0 ? b = x : print('nothing to inserted');
  int? otherValue;
  print(otherValue ??=
      34); //this code will check first if otherValue variable is null then assign 34 to it.

  int newValue = x;
  print(newValue);
  //puting ? to type inference of the list will allow null value inside of list. else it will generate error.
  List cities = <String?>['peshawar', 'lahore', 'swat', null];
  for (var city in cities) {
    print(city);
  }
}
