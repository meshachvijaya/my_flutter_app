import 'package:flutter/material.dart';
import 'package:my_flutter_app/login.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(
        appBarTheme: const AppBarTheme(
          iconTheme: IconThemeData(color: Colors.white),
        ),
      ),
      debugShowCheckedModeBanner: false,
      home: const Login(),
    );
  }
}
