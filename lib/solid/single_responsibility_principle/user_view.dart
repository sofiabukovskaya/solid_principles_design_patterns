
import 'package:solid_principles_design_patterns/solid/single_responsibility_principle/user.dart';

class UserView {
  void showWelcomeMessage(User user) {
    print('Welcome, ${user.name}!');
  }
}