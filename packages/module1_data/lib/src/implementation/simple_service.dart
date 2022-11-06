import 'package:module1_data/module1_data.dart';

class SimpleService implements HealthService {
  @override
  bool getHealth() {
    return true;
  }
}
