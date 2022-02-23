import 'dart:math';

abstract class Shape {
  double get area;
  double get perimeter;
  void printValue() {
    print('Area: $area\nPerimeter: $perimeter');
  }
}

class Square extends Shape {
  Square(this.side);
  final double side;

  @override
  double get area => side * side;
  @override
  double get perimeter => 4 * side;
}

class Circle extends Shape {
  Circle(this.radius);
  final double radius;

  @override
  double get area => pi * radius * radius;
  @override
  double get perimeter => 2 * pi * radius;
}

void printArea(Shape shape) {
  print(shape.area);
}

void main() {
  final Shape square = Square(10);
  printArea(square);
  final Shape circle = Circle(5);
  printArea(circle);

  final shapes = [
    Square(3),
    Circle(5),
  ];

  print('\n================================');
  shapes.forEach(printArea);
  print(
      '\n=============Adding perimeter getter to shape class===================');
  // shapes.forEach((element) {
  //   element.printValue();
  // });
  shapes.forEach((element) => element.printValue());
}
