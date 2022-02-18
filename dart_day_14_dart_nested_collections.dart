void main() {
  //Some of the code i have commented out you uncomment that when you need it.
  //In this codelab we will see how we can nest multiple collection to structure data.
  var restaurants = [
    {'name': 'Torry kababy', 'cuisine': 'peshawari', 'ratings': 4.5},
    {'name': 'Roshan kababy', 'cuisine': 'rawalpindi', 'ratings': 4.8},
    {'name': 'Tariq chai wala ', 'cuisine': 'charsada', 'ratings': 5.0},
  ];
  //To iterate to all these nested maps in a list we can use for in loop.
  for (var item in restaurants) {
    // print(item);
  }

  // print('Accessing a specific map in a list');
  // print(restaurants[0]);

  // print('Accessing specific index of map in a nested list');
  //I want to access rating of second map
  // print(restaurants[1]['ratings']);

  // print('Inserting list into a specific map into nested list');
  List addToMap = ['chef', 'dishWasher', 'cleaner'];
  restaurants.add({'employees': addToMap});

  //Quiz on nested maps
  /*Given the following list of restaurants:
    void main()
    {
        var restaurantQuize = [
    {
      'name': 'Torry kababy', 
      'cuisine': 'peshawari',
      'ratings': [4.2,4.5,3.0]},
    {
      'name': 'Roshan kababy', 
      'cuisine': 'rawalpindi', 
      'ratings': [4.8,4.5,5.0]},
    {
      'name': 'Tariq chai wala ', 
      'cuisine': 'charsada', 
      'ratings': [4.8,5.0,4.5]
    },
  ];
    }
  Write a program that caculated the average rating  score for 
  each restuarant, and adds it as an 'avbRating': value'

  use the following code as a starting point:
   */
  print('=========================================');

  List<Map<String, dynamic>> restaurantQuiz = [
    {
      'name': 'Torry kababy',
      'cuisine': 'peshawari',
      'ratings': [4.2, 4.5, 3.0]
    },
    {
      'name': 'Roshan kababy',
      'cuisine': 'rawalpindi',
      'ratings': [4.8, 4.5, 5.0]
    },
    {
      'name': 'Tariq chai wala ',
      'cuisine': 'charsada',
      'ratings': [4.8, 5.0, 4.5]
    },
  ];
  //this is outer loop which iterate through index of every nested map inside list.
  for (var item in restaurantQuiz) {
    final ratings = item['ratings'] as List<double>;
    var total = 0.0;
    //this is inner loop which will iterate inside every index which contain list
    for (var item in ratings) {
      total += item;
    }
    final avgRating = total / ratings.length;
    item['avgRating'] = avgRating.toStringAsFixed(2);
  }
  // print(restaurantQuiz);

  print('=========================================');
  //Collection for loop

  List<int> addedList = [5, 6, 7, 8, 9];
  List<int> newList = [1, 2, 3, 4, ...addedList];

  print('Using for in loop to add to lists');

  for (int item in addedList) {
    newList.add(item);
  }
  print(newList);

  print('Using forEach loop to add to lists');

  addedList.forEach((element) {
    newList.add(element);
  });
  print(newList);

  print('Using spread operator inside list');
  newList = [1, 2, 3, 4, ...addedList];
  print(newList);

  print('Adding value to list using for loop inside list');
  newList = [1, 2, 3, 4, for (int item in addedList) item];
  print(newList);
}
