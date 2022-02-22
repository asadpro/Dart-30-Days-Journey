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

  print(
      '========================================\nOperations on Collections using functions');
  List numbers = [3, 2, 1];
  /*Here i have passed one void function to another function as argument and we can do this as long as 
  both function have the same type.*/
  numbers.forEach((print));
  numbers.forEach((element) {
    //This is the same as above loop.
    print(element);
  });
  //Now double the element inside list name numbers from [3,2,1]==>[6,4,2]
  print('Doubling the values inside list');
  numbers.forEach((element) => print(element * 2));
  //We can also use map method on a list to return a new lazy list of current list e.g.
  print('Returning new list out of old list using map method');
  List newList = numbers
      .map((e) => e * 2)
      .toList(); /*Many of the collection methods return iterable and if you want to use 
  them as list or set you must have to convert it. Like i did above by calling toList() method on map which returns iterable
  by default.*/
  print(newList);
  print(
      '========================================\nWhere() and fireWhere() method on collecions');
  List<int> evenList = [1, 2, 3, 4];
  final even = evenList.where((element) => element % 2 == 0);
  print('Even numbers: $even');
  final odd = evenList.where((element) => element % 2 == 1);
  print('Odd numbers: $odd');
  print('\nWe can also achieve the same as below');
  List newEven = [];
  List newOdd = [];
  evenList.forEach((element) =>
      element % 2 == 0 ? newEven.add(element) : newOdd.add(element));
  print(
      'Even numbers using forEach: $newEven\nEven numbers using forEach: $newOdd');

  int newInt = evenList.firstWhere(
    //This method will check if condition is true then return bool if not through an error using orElse.
    (element) => element % 9 == 0,
    orElse: () => 9124,
  );
  print(newInt);
  print(
      '========================================\n Implement the where function');
  /*
  Implement a 'where' function that takes two arguments:
    --A list of items
    --A function argument that can be used to filter items in the list by evaluating each
    item with a boolean condition.
    This function should return a new list, which contains the items filtered using the function
    arguments.

    Use generics, so the 'where' function can work on lists of any type

    Then, use this function to retrievel all the odd numbers from this list:
    [1,2,3,4], and print the result.
 */
  const checkList = [1, 2, 3, 4];
  final oddValues = where<int>(checkList, (value) => value % 2 == 1);
  print(oddValues);
} //Ending of main function body

List<T> where<T>(List<T> items, bool Function(T) f) {
  var result = <T>[];
  for (var item in items) {
    if (f(item)) {
      result.add(item);
    }
  }
  return result;
}

welcome(Greet greet, name) {
  print(greet(name));
  print('Welcom to the flutter course');
}
