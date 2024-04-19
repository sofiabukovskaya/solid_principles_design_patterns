import 'package:solid_principles_design_patterns/solid/dependency_inversion_principle/database.dart';
import 'package:solid_principles_design_patterns/solid/single_responsibility_principle/user.dart';

class MySQLDatabase implements Database {
  @override
  void saveUser(User user) {
    print('Saving user ${user.name} to MySQL db');
  }
}