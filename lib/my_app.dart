import 'package:flutter/material.dart';
import 'package:navigation_with_http/screens/second_screen.dart';
import 'package:navigation_with_http/screens/third_screen.dart';
import './screens/home_screen.dart';

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      initialRoute: '/',
      routes: {
        '/': (context) => HomeScreen(title: 'Home screen'),
        '/secondScreen': (context) => SecondScreen(),
        '/thirdScreen': (context) => ThirdScreen(),
      },
    );
  }
}
