import 'dart:ffi';
import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';
import 'package:my_splash_screen/screens/fragment.dart';
import 'package:my_splash_screen/screens/home.dart';

void main() => runApp(chooseWidget(window.defaultRouteName));

Widget chooseWidget(String route) {
  switch (route) {
    // name of the route defined in the host app
    case 'splashRoute':
      return MyFlutterView();

    default:
      return MyFlutterView();
  }
}

class MyFlutterView extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      // home: HomeScreen(),
      routes: {
        "/": (context) => HomeScreen(),
        "/flutter_fragment": (context) => const FlutterFragment()
      },
    );
  }
}

class SplashScreen extends StatefulWidget {
  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  int counter = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Flutter Screen'),
      ),
      backgroundColor: Colors.white,
      body: Center(
          child: Text(
        'You have pushed this button $counter times',
        style: TextStyle(fontSize: 20),
      )),
      floatingActionButton: FloatingActionButton(
          child: const Icon(Icons.add),
          onPressed: () => {
                setState(() {
                  counter++;
                })
              }),
    );
  }
}
