import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'GridView Demo',
      debugShowCheckedModeBanner: false,
      home: Home(),
    );
  }
}

class Home extends StatelessWidget {
  Home({super.key});

  final List<String> _names = [
    'rem',
    'mahiru',
    'nijika1',
    'Kita',
    'alya',
    'yuki',
    'masha',
    'megumi',
    'utaha',
    'miu'
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Percobaan Menggunakan Widget'),
      ),
      body: GridView.count(
        crossAxisCount: 3,
        children: List.generate(
          _names.length,
          (index) {
            return GridTile(
              child: Container(
                decoration: BoxDecoration(
                  image: DecorationImage(
                    image: AssetImage('images/${_names[index]}.jpg'),  
                    fit: BoxFit.cover,
                  ),
                ),
              ),
            );
          },
        ),
      ),
    );
  }
}
