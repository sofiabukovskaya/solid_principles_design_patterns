import 'package:solid_principles_design_patterns/solid/open_closed_principle/shape.dart';

class Square extends Shape {
  double side;

  Square(this.side);

  @override
  double calculateArea() {
    return side * side;
  }
}
