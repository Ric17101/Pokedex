import 'package:flutter/material.dart';
import 'package:pokedex/screens/splash.dart';

import 'screens/details.dart';
import 'screens/home.dart';

void main() {
  runApp(const App());
}

class App extends StatelessWidget {
  const App({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Pokedex',
      theme: ThemeData(
        primarySwatch: Colors.red,
      ),
      initialRoute: "/",
      routes: {
        "/": (context) => const SplashScreen(),
        "/home": (context) => const Home(),
        "/details": (context) => const Details(),
      },
    );
  }
}
