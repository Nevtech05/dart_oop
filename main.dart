import 'dart:async';
import 'dart:io';
import 'dart:math';

// Interface
abstract class Shape {
  double area();
}

// Base class
class Circle implements Shape {
  double radius;

  Circle(this.radius);

  @override
  double area() {
    return pi * pow(radius, 2);
  }
}

// Derived class
class Cylinder extends Circle {
  double height;

  Cylinder(this.height, double radius) : super(radius);

  @override
  double area() {
    return 2 * super.area() + 2 * pi * radius * height;
  }
}

// Method that demonstrates the use of a loop
void printNNumbers(int n) {
  for (int i = 1; i <= n; i++) {
    print(i);
  }
}

Future<void> main() async {
  // Initialize an instance of a class with data from a file
  final file = File('circle.txt');
  final data = await file.readAsString();
  final circle = Circle(double.parse(data));

  // Override an inherited method
  final cylinder = Cylinder(5, 3);
  print('Area of cylinder: ${cylinder.area()}');

  // Use a loop
  printNNumbers(10);
}