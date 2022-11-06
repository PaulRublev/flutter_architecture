import 'package:get_it/get_it.dart';
import 'package:module1_data/module1_data.dart';
import 'package:module1_data/src/implementation/simple_user_service.dart';

import 'implementation/simple_service.dart';

class ServiceProvider {
  static final _getIt = GetIt.I;

  T get<T extends Object>() => _getIt.get<T>();

  static final instance = ServiceProvider();

  void initialize() {
    _getIt.registerLazySingleton<HealthService>(
      () => SimpleService(),
    );
    _getIt.registerLazySingleton<UserService>(
      () => SimpleUserService(),
    );
  }
}
