import 'package:flutter/material.dart';

class YellowPage extends StatelessWidget {
  const YellowPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Yellow page'),
        backgroundColor: Colors.yellow,
      ),
      body: Center(
        child: Text(
          'Yellow Page',
          style: TextStyle(fontSize: 24),
        ),
      ),
    );
  }
}
