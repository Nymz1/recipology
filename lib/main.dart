import 'package:flutter/material.dart';
import 'screens/home.dart';

void main() {
  runApp(const Recipology());
}

class Recipology extends StatelessWidget {
  const Recipology({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Recipology',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      home: const Home(),
    );
  }
}
