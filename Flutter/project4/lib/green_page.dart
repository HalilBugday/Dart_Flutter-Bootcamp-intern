import 'package:flutter/material.dart';

class GreenPage extends StatelessWidget {
  const GreenPage({ Key? key }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Green page'), backgroundColor: Colors.green,),
      body: Center(child: Text('Green Page', style: TextStyle(fontSize: 24),),),
    );
  }
}