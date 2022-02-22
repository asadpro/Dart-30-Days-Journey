import 'dart:math';

abstract class Shape {
  double get area;
}

class Square extends Shape {
  Square(this.side);
  final double side;

  @override
  double get area => side * side;
}

class Circle extends Shape {
  Circle(this.radius);
  final double radius;

  @override
  double get area => pi * radius * radius;
}

void printArea(Shape shape) {
  print(shape.area);
}

void main() {
  // Shape shape = Shape();//we cannot instantiate the abstract class.
  /*We can always assign instance of child class to it's parent like we do below. */

  final Shape square = Square(10);
  // print('The area of square is :${square.area}'); // We can replace this with following
  printArea(square);
  final Shape circle = Circle(5);
  printArea(circle);

  //We can also define the list of shape like:
  final shapes = [
    Square(3),
    Circle(5),
  ];
  // shapes.forEach((shape) { //we can write it also like below
  //   printArea(shape);
  // });
  print('\n================================');
  shapes.forEach(printArea);
}
