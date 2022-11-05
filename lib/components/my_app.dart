import 'package:flutter/material.dart';
import 'package:flutter_architecture/components/my_home_page.dart';
import 'package:module1_business/module1_business.dart';
import 'package:provider/provider.dart';

class MyApp extends StatefulWidget {
  const MyApp({super.key});

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  late final MainBloc _mainBloc;

  @override
  void initState() {
    super.initState();
    _mainBloc = BlocFactory.instance.get<MainBloc>();
  }

  @override
  Widget build(BuildContext context) {
    return Provider<MainBloc>(
      create: (_) => _mainBloc,
      child: MaterialApp(
        title: 'Flutter Demo',
        theme: ThemeData(
          primarySwatch: Colors.blue,
        ),
        home: const MyHomePage(title: 'Flutter Demo Home Page'),
      ),
    );
  }

  @override
  void dispose() {
    _mainBloc.dispose();
    super.dispose();
  }
}
