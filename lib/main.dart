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
          headlineSmall: TextStyle(
            color: Colors.white,
            fontWeight: FontWeight.normal,
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
                  textAlign: TextAlign.center,
                  text: TextSpan(
                    children: [
                      TextSpan(
                        text: 'BAKING LESSONS\n',
                        style: Theme.of(context).textTheme.displaySmall,
                      ),
                      TextSpan(
                        text: 'MASTER THE ART OF BAKING',
                        style: Theme.of(context).textTheme.headlineSmall,
                      )
                    ],
                  ),
                ),
                Container(
                  padding: EdgeInsets.symmetric(
                    horizontal: 26,
                    vertical: 16,
                  ),
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(25),
                    color: kPrimaryColor,
                  ),
                  child: Row(
                    children: [
                      Text(
                        'START LEARNING',
                        style: Theme.of(context).textTheme.labelLarge!.copyWith(
                              color: Colors.black,
                            ),
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
