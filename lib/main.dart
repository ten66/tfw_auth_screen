import 'package:flutter/material.dart';
import 'package:tfw_auth_screen/constants.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Auth Screen 1',
      theme: ThemeData(
        scaffoldBackgroundColor: kBackgroundColor,
        colorScheme: ColorScheme.light(
          primary: kPrimaryColor,
        ),
        useMaterial3: true,
      ),
      home: WelcomeScreen(),
    );
  }
}

class WelcomeScreen extends StatelessWidget {
  const WelcomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          Expanded(
            child: Container(
              decoration: BoxDecoration(
                image: DecorationImage(
                  image: AssetImage('assets/perosn.jpeg'),
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
