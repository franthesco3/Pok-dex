import 'package:flutter/material.dart';
import 'package:pokedex/data/support/utils/router/mobile_router.dart';
import 'package:pokedex/injector.dart';

void main() {
  WidgetsFlutterBinding.ensureInitialized();
  setup();

  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      routes: MobileRouter.routes,
      initialRoute: MobileRouter.initialRoute,
    );
  }
}
