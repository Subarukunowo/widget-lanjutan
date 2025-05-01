import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'MediaQuery vs LayoutBuilder Demo',
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
    // Menggunakan MediaQuery untuk mendapatkan ukuran layar
    Size screenSize = MediaQuery.of(context).size;

    return Scaffold(
      appBar: AppBar(title: Text(title)),
      body: Row(
        children: [
          Expanded(
            child: LayoutBuilder(
              builder: (BuildContext context, BoxConstraints constraints) {
                return Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.stretch,
                  children: [
                    Text(
                      'MediaQuery: ${screenSize.width.toStringAsFixed(2)}',
                      style: const TextStyle(
                        color: Color.fromARGB(255, 0, 0, 0),
                        fontSize: 18,
                      ),
                      textAlign: TextAlign.center,
                    ),
                    Text(
                      'LayoutBuilder: ${constraints.maxWidth}',
                      style: const TextStyle(
                        color: Color.fromARGB(255, 0, 0, 0),
                        fontSize: 18,
                      ),
                      textAlign: TextAlign.center,
                    ),
                  ],
                );
              },
            ),
          ),
          Expanded(
            flex: 3,
            child: LayoutBuilder(
              builder: (BuildContext context, BoxConstraints constraints) {
                return Container(
                  color: Colors.white,
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.stretch,
                    children: [
                      Text(
                        'MediaQuery: ${screenSize.width.toStringAsFixed(2)}',
                        style: const TextStyle(
                          color: Colors.blueGrey,
                          fontSize: 18,
                        ),
                        textAlign: TextAlign.center,
                      ),
                      Text(
                        'LayoutBuilder: ${constraints.maxWidth}',
                        style: const TextStyle(
                          color: Colors.blueGrey,
                          fontSize: 18,
                        ),
                        textAlign: TextAlign.center,
                      ),
                    ],
                  ),
                );
              },
            ),
          ),
        ],
      ),
    );
  }
}
