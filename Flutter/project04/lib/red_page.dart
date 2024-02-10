import 'dart:math';

import 'package:flutter/material.dart';

// ignore: must_be_immutable
class RedPage extends StatelessWidget {
  RedPage({Key? key}) : super(key: key);
  int _rastgeleSayi = 0;
  @override
  Widget build(BuildContext context) {
    // ignore: deprecated_member_use
    return WillPopScope(
      //geri gelmeyi kapatma (PopScope olarak güncel)
      onWillPop: () {
        print('on will pop calıstı');

        if (_rastgeleSayi == 0) {
          _rastgeleSayi = Random().nextInt(100);
          Navigator.pop(context, _rastgeleSayi);
        }

        return Future.value(true);
      },
      child: Scaffold(
        appBar: AppBar(
          title: Text('Red'),
          backgroundColor: Colors.red,
          //automaticallyImplyLeading: false,
        ),
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(
                'Red Page',
                style: TextStyle(fontSize: 24),
              ),
              ElevatedButton(
                onPressed: () {
                  _rastgeleSayi = Random().nextInt(100);
                  print("Üretilen sayı $_rastgeleSayi");
                  Navigator.of(context).pop<int>(_rastgeleSayi);
                },
                child: Text('Geri Dön'),
              ),
              ElevatedButton(
                onPressed: () {
                  if (Navigator.canPop(context)) {
                    print("evet pop olabilir");
                  } else
                    print('hayır olamaz');
                },
                style: ElevatedButton.styleFrom(backgroundColor: Colors.red.shade600),
                child: Text(
                  'Can Pop Kullanımı',
                ),
              ),
              ElevatedButton(
                onPressed: () {
                  Navigator.pushNamed(context, '/orangePage');
                },
                style: ElevatedButton.styleFrom(backgroundColor: Colors.orange.shade600),
                child: Text(
                  'Goto orange',
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
