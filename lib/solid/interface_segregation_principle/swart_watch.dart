import 'package:flutter/foundation.dart';
import 'package:solid_principles_design_patterns/solid/interface_segregation_principle/phone.dart';

class SmartWatch implements Phone {
  @override
  void makeCall() {
    debugPrint('Male a call');
  }
}
