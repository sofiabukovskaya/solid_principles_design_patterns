import 'dart:math';

import 'package:solid_principles_design_patterns/solid/open_closed_principle/shape.dart';

class Circle extends Shape {
  double radius;
  Circle(this.radius);

  @override
  double calculateArea() {
    return pi * pow(radius, 2);
  }
}
