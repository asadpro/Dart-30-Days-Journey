// typedef Greet = String Function(String);//we can also write the above method as below.

typedef String Greet(String name);
void main() {
  // creating a named function type or alias

  final sayhi = (String name) => 'Hi $name';
  welcome(sayhi, 'Asad ');
  print('\n======================================');
  print('Closure example start from here\n');
  const multiplier = 4;
  const list = [1, 2, 3];
  final result =
      list.map((elementOfList) => elementOfList * multiplier).toList();
  /*If you want to modify elements inside iterable then use map in this case map will multiply 4 with every 
    element inside list and will replace that element with the output result. */
  print('Result using map is: $result');
  var result2 = 0;
  list.forEach((element) {
    result2 = element * multiplier;
  });
  print('Result using list is: $result2');
}

welcome(Greet greet, name) {
  print(greet(name));
  print('Welcom to the flutter course');
}
