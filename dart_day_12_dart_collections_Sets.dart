void main() {
  Set map1 = {4, 23, 43, 22, 11};
  Set map2 = {4, 3, 6, 2, 8};
  map1.add(1);
  map2.addAll(map1);
  for (int item in map2) {
    print(item);
  }
  // Given the Set of integers: {1,3,5,7,9]
  // Write a program that prints the sum of all these values with the help of Set.
  print('===========================');
  Set integers = {1, 3, 5, 7, 9};
  int sum = 0;
  for (int element in integers) {
    sum += element;
  }
  print(integers);
  print("Sum of all the number in Set: $sum");

  print('=================================');
  //Some basic operation on Set
  //To find the no of element in a Set.
  Set<dynamic> names = {'asad', 'bilal', 'hamza', 'usman'};
  names.length;
  names.add('salim');
  names.addAll(map1);
  names.first;
  names.last;
  print(names);
  names.remove('muhib');
  names.add('asad');
  print('Before removing asad');
  print(names);
  names.removeWhere((element) => element == 'asad');
  print(names);
  Set cities = {'peshawar', 'islamabad', 'lahore'};
  map1.difference(map2);
  print('=================================');
  /*Given two integer sets 'a' and 'b', write a program to 
  calculate the set of the elements that 
  belong to either 'a' or 'b', but not both. 
  
  For example given the following: 
  const a = {1,3};
  const b = {3,5};
  
  The program should print '{1,5}'.

  Then, calculate and print the sum of all the items in the resulting set.
  */
  const a = {1, 3};
  const b = {3, 5};
  print('common value in both set: $a $b ');
  final c = a.union(b).difference(b.intersection(a));
  print(c);
  int add = 0;
  for (int item in c) {
    sum += item;
  }
  print(add);
}
