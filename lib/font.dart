import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Font Family Demo',
      debugShowCheckedModeBanner: false,
      home: const Home(title: 'Percobaan Menggunakan Widget'),
    );
  }
}

class Home extends StatelessWidget {
  const Home({super.key, required this.title});

  final String title;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text(title)),
      body: Center(
        child: Column(
          children: <Widget>[
            Container(
              height: 15.0,
            ),
            const Text(
              'PlayfairDisplay-Regular',
              style: TextStyle(
                fontFamily: 'PlayfairDisplay',
                fontSize: 30,
              ),
            ),
            Container(
              height: 15.0,
            ),
            const Text(
              'PlayfairDisplay-Italic',
              style: TextStyle(
                fontFamily: 'PlayfairDisplay',
                fontStyle: FontStyle.italic,
                fontSize: 30,
              ),
            ),
            Container(
              height: 15.0,
            ),
            const Text(
              'PlayfairDisplay-Bold',
              style: TextStyle(
                fontFamily: 'PlayfairDisplay',
                fontWeight: FontWeight.bold,
                fontSize: 30,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
