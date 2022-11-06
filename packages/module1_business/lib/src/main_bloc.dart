import 'package:module1_data/module1_data.dart';

class MainBloc {
  final HealthService healthService;
  final UserService userService;

  MainBloc({
    required this.healthService,
    required this.userService,
  });
}
