import 'package:solid_principles_design_patterns/solid/open_closed_principle/shape.dart';

class AreaCalculator {
  double calculateArea(Shape shape) {
    return shape.calculateArea();
  }
}
