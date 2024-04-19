import 'package:solid_principles_design_patterns/solid/liskov_substitution_principle/electric_vehicle.dart';

class ElectricCar extends ElectricVehicle{
  @override
  void charge() {
      print('Charging battery');
  }

  @override
  void move() {
    print('Moving');
  }
}