import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}
class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'FLutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: const Home(Title: 'flutter Demo Home Page'),
    );
  }
}
class Home extends StatefulWidget {
  const Home({super.key, required this.Title});
  final String Title;
  @override
  State<Home> createState() => _HomeState();
}
class _HomeState extends State<Home> {
bool _checkboxVal1 = false;
bool _checkboxVal2 = false;
bool _checkboxVal3 = false;   
bool _checkboxVal4 = false;
List<String> list = [];
String text="";
void showData(){
  text = "";
  for (int i = 0; i < list.length; i++) {
    text += list[i] + "\n";
  }
}

  @override
Widget build(BuildContext context) {   
    return Scaffold(
      appBar: AppBar(title: const Text('Percobaan Menggunakan Widget')),
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Column(
          children: <Widget>[
          const Text('Bahasa pemrograman yang saya kuasai:'),
              CheckboxListTile(
                value: _checkboxVal1,
                title: const Text('Phyton'),
                activeColor: Colors.lightGreenAccent,
                secondary: Image.asset(
                  'images/python.png',
                   width: 20,  
  height: 20, 
  fit: BoxFit.cover,
                  ),
                onChanged: (bool? value) {
                  setState(() {
                    _checkboxVal1 = value!;
                  });
                  if (_checkboxVal1==true) {
                    list.add('Phyton');
                  } else {
                    list.remove('Phyton');
                  }
                  showData();
                },
              ),
          CheckboxListTile(
value: _checkboxVal2,
title: const Text('Javascript'),
activeColor: Colors.lightGreenAccent,
secondary: Image.asset('images/javascript.png',
   width: 20,  
  height: 20, 
  fit: BoxFit.cover,),
                onChanged: (bool? value) {
                  setState(() {
                    _checkboxVal2 = value!;
                    if (_checkboxVal2) {
                      list.add('Javascript');
                    } else {
                      list.remove('Javascript');
                    }
                    showData();
                  });
                },
              ),
              CheckboxListTile(
                value: _checkboxVal3,
                title : const Text('PHP'),
                activeColor: Colors.lightGreenAccent,
                secondary: Image.asset('images/php.png',   
                width: 20,  
  height: 20, 
  fit: BoxFit.cover,),
                onChanged: (bool? value) {
                  setState(() {
                    _checkboxVal3 = value!;
                    if (_checkboxVal3) {
                      list.add('PHP');
                    } else {
                      list.remove('PHP');
                    }
                    showData();
                  });
                },
              ),
         
            CheckboxListTile(
                value: _checkboxVal4,
                title: const Text('Java'),
                activeColor: Colors.lightGreenAccent,
                secondary: Image.asset('images/java.png',
                   width: 20,  
  height: 20, 
  fit: BoxFit.cover,),
                onChanged: (bool? value) {
                  setState(() {
                    _checkboxVal4 = value!;
                    if (_checkboxVal4) {
                      list.add('Java');
                    } else {
                      list.remove('Java');
                    }
                    showData();
                  });
                },
              ),
            
          Text('Data: $text'),
          ],
          ),
          
        ),
      );   
}
}
