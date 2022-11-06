import 'package:module1_model/module1_model.dart';

abstract class UserService {
  UserData getDefaultUser();
  UserData getUserById(int id);
}
