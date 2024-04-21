import 'package:solid_principles_design_patterns/solid/single_responsibility_principle/user.dart';

abstract class Database {
  void saveUser(User user);
}
