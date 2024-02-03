import 'package:flutter/material.dart';
//ignore_for_file: prefer_const_constructors
//ignore_for_file: prefer_interpolation_to_compose_strings
//ignore_for_file: avoid_print
//ignore_for_file: sort_child_properties_last

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(primaryColor: Colors.blueAccent),
      home: Scaffold(
        backgroundColor: const Color.fromARGB(255, 211, 230, 240),
        appBar: AppBar(
          title: Text('Pamukkale University'),
          backgroundColor: Colors.blue,
        ),
        body: Container(
          //alignment: Alignment.center,
          width: 200,
          height: 300,
          color: Colors.purple,
          child: Text(
            'Hello world!',
            style: TextStyle(color: Colors.black, fontSize: 16, fontWeight: FontWeight.w500),
            textAlign: TextAlign.center,
          ),
          //constraints: BoxConstraints(minHeight: 250, minWidth: 100),
          //margin: EdgeInsets.all(16)
          margin: EdgeInsets.only(left: 16, top: 24),
          padding: EdgeInsets.all(50), //text 'in container'
        ),
        floatingActionButton: FloatingActionButton(
          onPressed: () {
            debugPrint('Clicked');
          },
          child: Icon(
            Icons.access_alarm,
            color: Colors.black,
          ), //button icon
          backgroundColor: Color.fromARGB(255, 203, 197, 71), //button on home page
        ),
      ),
    );
  }
}
