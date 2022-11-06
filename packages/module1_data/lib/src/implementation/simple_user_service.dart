import 'package:module1_data/module1_data.dart';
import 'package:module1_model/module1_model.dart';

class SimpleUserService implements UserService {
  @override
  UserData getDefaultUser() {
    return const UserData(id: 1, name: 'Default');
  }

  @override
  UserData getUserById(int id) {
    return UserData(id: id, name: 'Specific User number $id');
  }
}
