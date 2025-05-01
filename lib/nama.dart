import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Percobaan Widget',
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
  final TextEditingController _controller = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Percobaan Menggunakan Widget'),
      ),
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Column(
          children: <Widget>[
            TextField(
    controller: _controller,

    onChanged: (String value){
       setState(() {
    
  });
},
decoration: const InputDecoration(
  hintText: 'Inputkan nama anda',
  hintStyle: TextStyle(
    fontStyle: FontStyle.normal        
    ),
    labelText: 'Nama Anda',
    icon: Icon(Icons.person_pin),
    prefixIcon: Icon(Icons.person),border: OutlineInputBorder(),
),
    ),
    Container(
      height: 10,
    ),ElevatedButton(
      child:const Text('Submit'),
       onPressed: () {
               showDialog(
                context: context,
                builder: (BuildContext context) {
                return AlertDialog(
                  content: Text('Halo apa kabar ${_controller.text}'),
         );
                });
                                                                   
        
              },
              
            ),
            Container(
              height: 10,
            ),
            Text(_controller.text),
          ],
        ),
      ),
    );
  }
  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }
}
