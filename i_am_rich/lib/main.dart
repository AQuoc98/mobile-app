import 'package:flutter/material.dart';

void main() => runApp(
      MaterialApp(
        home: Scaffold(
          backgroundColor: Colors.blueGrey,
          appBar: AppBar(
            title: const Text(
              'UI/UX Team',
              style: TextStyle(color: Colors.white),
            ),
            backgroundColor: Colors.blueGrey[900],
          ),
          body: const Center(
            child: Image(
              image: AssetImage('images/dung.jpeg'),
            ),
          ),
        ),
      ),
    );
