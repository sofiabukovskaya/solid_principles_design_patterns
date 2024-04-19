import 'package:solid_principles_design_patterns/solid/liskov_substitution_principle/electric_vehicle.dart';
import 'package:solid_principles_design_patterns/solid/liskov_substitution_principle/fuel_vehicle.dart';

class PetrolCar extends FuelVehicle {
  @override
  void move() {
    print('Refilling the petrol');
  }

  @override
  void refuel() {
    print('Moving');
  }
}

void serviceFuelVehicle(FuelVehicle fuelVehicle) {
  fuelVehicle.refuel();
  //some serving activities
}

void serviceElectricVehicle(ElectricVehicle electricVehicle) {
  electricVehicle.charge();
  //some serving activities
}
