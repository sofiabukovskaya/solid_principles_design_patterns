import 'package:solid_principles_design_patterns/solid/dependency_inversion_principle/database.dart';
import 'package:solid_principles_design_patterns/solid/single_responsibility_principle/user.dart';

class UserService {
  Database database;
  UserService(this.database);

  void saveUser(User user) {
    database.saveUser(user);
  }
}
