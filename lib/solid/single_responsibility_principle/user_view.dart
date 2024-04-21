import 'package:flutter/foundation.dart';
import 'package:solid_principles_design_patterns/solid/single_responsibility_principle/user.dart';

class UserView {
  void showWelcomeMessage(User user) {
    debugPrint('Welcome, ${user.name}!');
  }
}
