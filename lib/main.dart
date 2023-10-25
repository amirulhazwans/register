import 'package:flutter/material.dart';
import 'Next_page.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        body: Center(
          child: WelcomeButton(),
        ),
      ),
    );
  }
}

class WelcomeButton extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      onPressed: () {
        Navigator.push(
          context,
          MaterialPageRoute(builder: (context) => NextPage()),
        );// Do something when the button is pressed.
      },
      child: Text('Welcome'),
      style: ElevatedButton.styleFrom(
        backgroundColor: Colors.red,
      ),

    );
  }
}

