import 'dart:async';

import 'package:module1_data/module1_data.dart';

class MainBloc {
  final HealthService healthService;
  final StreamController<int> _eventsController = StreamController();

  MainBloc({
    required this.healthService,
  });

  void add(int event) {
    if (_eventsController.isClosed) return;
    _eventsController.add(event);
  }

  void dispose() {
    _eventsController.close();
  }
}
