import 'package:flutter/material.dart';
import 'package:flutter_widgets_test_case/home_screen.dart';
import 'package:flutter_widgets_test_case/second_screen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Navigation',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      // home: HomeScreen(),
      initialRoute: '/home',
      // initialRoute: '/second',
      routes: {
        "/home":(context)=>HomeScreen(),
        '/second':(context)=>SecondScreen(),
      },
    );
  }
}

