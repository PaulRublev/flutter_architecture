import 'package:module1_data/module1_data.dart';

class DummyService implements HealthService {
  @override
  bool getHealth() {
    return true;
  }
}
