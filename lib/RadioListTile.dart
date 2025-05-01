import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Radio Button Demo',
      home: const Home(),
    );
  }
}

class Home extends StatefulWidget {
  const Home({super.key});

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  int _selected = -1;
  String _jenisKelamin = '';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Percobaan Menggunakan Widget'),
        backgroundColor: Colors.blue,
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            const Text(
              'Jenis Kelamin:',
              style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
            ),
            RadioListTile(
              value: 0,
              groupValue: _selected,
              title: const Text('Laki-laki'),
              activeColor: Colors.green,
              secondary: const Icon(Icons.person),
              onChanged: (int? value) {
                setState(() {
                  _selected = value!;
                  _jenisKelamin = 'Laki-laki';
                });
              },
            ),
            RadioListTile(
              value: 1,
              groupValue: _selected,
              title: const Text('Perempuan'),
              activeColor: Colors.green,
              secondary: const Icon(Icons.person),
              onChanged: (int? value) {
                setState(() {
                  _selected = value!;
                  _jenisKelamin = 'Perempuan';
                });
              },
            ),
            const SizedBox(height: 20),
            Text(
              'Anda memilih: $_jenisKelamin',
              style: const TextStyle(fontSize: 16),
            ),
          ],
        ),
      ),
    );
  }
}
