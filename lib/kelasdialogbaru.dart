import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Confirmation Dialog Demo',
      debugShowCheckedModeBanner: false,
      home: const Home(),
    );
  }
}

enum Answer { YES, NO }

class Home extends StatefulWidget {
  const Home({super.key});

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  String answer = '';
  String message = '';

  void setAnswer(String value) {
    setState(() {
      answer = value;
      message = 'Anda memilih: $answer';
    });
  }

  Future<void> confirm(BuildContext context) async {
    var simpleDialog = SimpleDialog(
      title: const Text('Konfirmasi'),
      children: <Widget>[
        Column(
          children: <Widget>[
            const Text('Anda ingin keluar dari Aplikasi?'),
            const SizedBox(height: 25.0),
            Row(
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                ElevatedButton(
                  child: const Text(
                    'Ya',
                    style: TextStyle(color: Color.fromARGB(255, 71, 81, 220)),
                  ),
                  onPressed: () {
                    Navigator.pop(context, Answer.YES);
                  },
                ),
                const SizedBox(width: 5.0),
                ElevatedButton(
                  child: const Text(
                    'Tidak',
                    style: TextStyle(color: Color.fromARGB(255, 71, 81, 220)),
                  ),
                  onPressed: () {
                    Navigator.pop(context, Answer.NO);
                  },
                ),
              ],
            ),
          ],
        ),
      ],
    );

    if (await showDialog(
          context: context,
          builder: (BuildContext context) {
            return simpleDialog;
          },
        ) ==
        Answer.YES) {
      setAnswer('Ya');
    } else {
      setAnswer('Tidak');
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Percobaan Menggunakan Widget')),
      body: Center(
        child: Column(
          children: <Widget>[
            const SizedBox(height: 15.0),
            ElevatedButton(
              child: const Text('Show dialog'),
              onPressed: () {
                confirm(context);
              },
            ),
            const SizedBox(height: 15.0),
            Text(
              message,
              style: const TextStyle(fontSize: 18.0),
            ),
          ],
        ),
      ),
    );
  }
}
