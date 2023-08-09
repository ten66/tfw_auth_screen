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
        // brightness: Brightness.dark,
        scaffoldBackgroundColor: kBackgroundColor,
        colorScheme: const ColorScheme.dark(
          primary: kPrimaryColor,
        ),
        textTheme: const TextTheme(
          displaySmall: TextStyle(
            color: Colors.white,
            fontWeight: FontWeight.bold,
          ),
          labelLarge: TextStyle(
            color: kPrimaryColor,
          ),
        ),
        useMaterial3: true,
      ),
      home: const WelcomeScreen(),
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
            flex: 3,
            child: Container(
              decoration: const BoxDecoration(
                image: DecorationImage(
                  image: AssetImage('assets/perosn.jpeg'),
                  fit: BoxFit.cover,
                ),
              ),
            ),
          ),
          Expanded(
            child: Column(
              children: [
                RichText(
                  text: TextSpan(
                    children: [
                      TextSpan(
                        text: 'BAKING LESSONS',
                        style: Theme.of(context).textTheme.displaySmall,
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
