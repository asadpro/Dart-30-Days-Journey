import 'dart:io';

void main() {
  /* In this codelab we will practice dart maps which contains key and values like dictionaries in 
  other languages.
  One thing always keep in mind that map can contain multiple duplicate values but keys must be unique otherwise
  compiler will through error.
  */
  Map<String, dynamic> house = {
    'rooms': 20,
    'size': 30,
    'address': 'peshawar',
    'papers': true,
  };

  //print all the keys
  house.keys;
  //print all the values
  house.values;
  //print the value by key
  house['size'];
  //finding key by its value
  //for iterating through value and keys by loops

  // for (String key in house.keys) {
  //   print(key);
  // }
  // print('values are : ');
  // for (var value in house.values) {
  //   print(value);
  // }

  print('=============================');
  //No it's time to do quiz
  /*Given the following map of pizza prices: 

    const pizzaPrices = 
    {
    'margherita':5.5, 
    'pepperoni':7.5,
    'vegetarian':6.5,
    };
    write a program to caculate the total for a given order.
    For example, given the following order:
    const order = ['margherita','pepperoni'];

    The program should print 'Total: $13'.

    Note: if a prizza is not a one the menu, the program should
    print something like this:

    pineapple pizza is not on the menu
     */
  const pizzaPrices = {
    'margherita': 5.5,
    'pepperoni': 7.5,
    'vegetarian': 6.5,
  };
  List<String> order = [];
  print(pizzaPrices);
  int counter = 0;
  double totalPrice = 0;
  while (counter != pizzaPrices.length) {
    print('Please place your order according to our menu:');
    String inputOrder = stdin.readLineSync()!;
    if (inputOrder == true) {
      exit(0);
    } else if (pizzaPrices.containsKey(inputOrder)) {
      order.add(inputOrder);
    } else {
      print('Sir we do not have this item in our list sorry!');
    }
    totalPrice += pizzaPrices[order[counter]]!.toDouble();
    counter += 1;
  }

  print('Your total price is: $totalPrice');
}
