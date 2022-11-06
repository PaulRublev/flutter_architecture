import 'package:get_it/get_it.dart';
import 'package:module1_business/module1_business.dart';
import 'package:module1_data/module1_data.dart';

class BlocFactory {
  static final _getIt = GetIt.I;

  T get<T extends Object>() => _getIt<T>();

  static final instance = BlocFactory();

  void initialize() {
    ServiceProvider.instance.initialize();
    _getIt.registerFactory(
      () => MainBloc(
        healthService: ServiceProvider.instance.get<HealthService>(),
        userService: ServiceProvider.instance.get<UserService>(),
      ),
    );
  }
}
