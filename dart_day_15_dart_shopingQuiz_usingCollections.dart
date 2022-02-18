void main() {
  const bananas = 5;
  const apples = 6;
  const grains = {
    'pasta': '500g',
    'rice': '1kg',
  };

  const addGrains = true;
  var shoppingList = {
    if (bananas > 0) 'bananas': bananas,
    if (apples > 0) 'apples': apples,
    ...grains
  };
  // shoppingList.putIfAbsent('bananas', () => bananas);
  // shoppingList.addEntries(grains.entries);

  print(shoppingList);

  print('========================================');
  print('Copying data from one list to another: ');

  List list = [9, 5, 3, 8];
  List copy1 = list;
  copy1.add(99);
  /*here 99 will be added to both list because copy1 list is not the actual copy of list
  int short copy1 is a reference to list in the memory.*/
  print(list);
  print(copy1);
  /*If you want to create an actual copy of list then do it the following way. */
  List copy2 = [...list];
  copy2[0] = 9124;
  print(copy2);
  print(list);
}
