void main() {
  List<double> rat = [4.3, 3.3, 2.5, 3.5];

  Restaurant restaurant =
      Restaurant(name: 'asad', cuisine: 'cuisine', ratings: rat);
  print(restaurant.ratingAvg());
}

class Restaurant {
  const Restaurant(
      {required this.name, required this.cuisine, required this.ratings});
  final String name;
  final String cuisine;
  final List<double> ratings;

  // int get numRatings {
  //   return ratings.length;
  // } We can write the above like this also
  int get numRatings => ratings.length;
  double ratingAvg() {
    if (ratings.isEmpty) {
      return 0;
    }
    return ratings.reduce((value, element) => value + element) / numRatings;
  }
}
