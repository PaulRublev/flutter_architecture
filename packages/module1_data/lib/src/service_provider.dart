import 'package:get_it/get_it.dart';
import 'package:module1_data/module1_data.dart';

import 'implementation/internals.dart';

class ServiceProvider {
  static final _getIt = GetIt.I;

  T get<T extends Object>() => _getIt.get<T>();

  static final instance = ServiceProvider();

  void initialize() {
    _getIt.registerLazySingleton<HealthService>(
      () => DummyService(),
    );
  }
}
