void main() {
  // we have three types of collections in dart
  /*
  1. Lists
  2. Sets
  3. Maps

  list and sets are alike but the main difference b/w both is list is order where Sets or unorders.
  also set is unique and list can contain duplicate values.
  Maps are like dictionaries in other languages. it contain key value pairs.
  Let's try it with the help of example.
   */

  List list1 = [49, 23, 43, 22, 11];
  List list2 = [4, 3, 6, 2, 8];
  list1.add(1);
  list2.addAll(list1);
  //You can also use spread operator to combine two lists
  List list3 = [...list1, ...list2];
  print(list3);
  list2.insert(0, 44);
  //This loop will iterate through every element in list2 and will put it into item variable.
  for (int item in list2) {
    // print(item);
  }
  // Given the list of integers: [1,3,5,7,9]
  // Write a program that prints the sum of all these values with the help of list.
  print('===========================');
  List integers = [1, 3, 5, 7, 9];
  int sum = 0;
  for (int element in integers) {
    sum += element;
  }
  print(integers);
  print("Sum of all the number in list: $sum");

  print('=================================');
  //Some basic operation on list
  //To find the no of element in a list.
  List<dynamic> names = ['asad', 'bilal', 'hamza', 'usman'];
  names.length;
  names.indexOf('asad');
  names.insert(1, 'muhib');
  names.add('salim');
  names.addAll(list1);
  names.first;
  names.last;
  names.insertAll(3, list2);
  print(names);
  names.remove('muhib');
  names.removeLast();
  names.removeAt(2);
  names.add('asad');
  print('Before removing asad');
  print(names);
  names.removeWhere((element) => element == 'asad');
  print(names);
  names.indexOf('bilal');
  print(names.indexWhere((element) => element == 'bilal'));
  //if you search for wrong words it will gives us negative index.
  final cities = ['peshawar', 'islamabad', 'lahore'];
  // cities = ['karachi']; //this is not allowed because it's define as final which prevent us to grow the list.
  cities[0] = 'karachi';
  const cityConstant = ['peshawar', 'islamabad', 'lahore'];
  // cityConstant = ['karachi'];
  cityConstant[0] = 'karachi';
}
