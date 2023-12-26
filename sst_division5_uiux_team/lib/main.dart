import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'UI/UX Team',
      home: Scaffold(
        backgroundColor: Colors.blueGrey,
        appBar: AppBar(
            title: const Text(
              'UI/UX Team',
              style: TextStyle(color: Colors.white),
            ),
            backgroundColor: Colors.blueGrey[900]),
        body: const Center(
          child: Image(image: AssetImage('images/dung.jpeg')),
        ),
      ),
    );
  }
}
