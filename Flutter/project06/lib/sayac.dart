import 'package:flutter/material.dart';

class SayacWidget extends StatefulWidget {
  const SayacWidget({Key? key}) : super(key: key);

  @override
  _SayacWidgetState createState() => _SayacWidgetState();
}

class _SayacWidgetState extends State<SayacWidget> {
  int _counter = 0;

  @override
  Widget build(BuildContext context) {
    print('2');
    return Text('Sayac $_counter');
  }

  arttir() {
    setState(() {
      _counter++;
    });
  }
}
