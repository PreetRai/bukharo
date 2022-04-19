import 'Screens/scores.dart';
import 'package:flutter/material.dart';
import 'Screens/home.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Bukharoo',
      routes: {
        //'/': (context) => const MyHomePage(title: 'Bukharo'),
        '/Scores': (context) => const Scores(
              title: 'Score Board',
            )
      },
      theme: ThemeData(
        primarySwatch: Colors.purple,
      ),
      home: const MyHomePage(title: 'Bukharoo'),
    );
  }
}
