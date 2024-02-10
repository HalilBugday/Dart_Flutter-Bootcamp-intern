import 'package:flutter/material.dart';

class SayacWidget extends StatefulWidget {
  const SayacWidget({Key? key}) : super(key: key);

  @override
  SayacWidgetState createState() => SayacWidgetState();
}

class SayacWidgetState extends State<SayacWidget> {
  int sayac = 0;
  void arttir() {
    setState(() {
      sayac++;
    });
  }

  @override
  Widget build(BuildContext context) {
    print('2');
    return Text(
      sayac.toString(),
      style: Theme.of(context).textTheme.headline1,
    );
  }
}
