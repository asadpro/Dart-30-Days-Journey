void main() {
  const pizzaPrices = {
    'margherita': 5.5,
    'pepperoni': 7.5,
    'vegetarian': 6.5,
  };
  const order = ['margherita', 'pepperoni', 'pineapple'];
  const order2 = ['margherita', 'pepperoni'];
  const order3 = ['pepperoni'];

  totalization(order: order, pizzaPrices: pizzaPrices);
  totalization(order: order2, pizzaPrices: pizzaPrices);
  totalization(order: order3, pizzaPrices: pizzaPrices);

  //Difference b/w Fat-arrow function and simple function
  print(sum(4, 4));
  print(sumWithFatArrow(4, 4));
}

totalization({required List<String> order, Map<String, double>? pizzaPrices}) {
  var total = 0.0;
  for (var item in order) {
    final price = pizzaPrices![item];
    if (price != null) {
      total += price;
    }
  }
  print('Total: \$$total');
}

//Example of Fat-arrow function
int sum(int a, int b) {
  return a + b;
} //these both function will gives us the same result.

int sumWithFatArrow(int a, int b) =>
    a + b; //Fat arrow is useful when you have a single expression.
