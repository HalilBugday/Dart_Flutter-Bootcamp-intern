import 'package:flutter/material.dart';

class KisiselFont extends StatelessWidget {
  const KisiselFont({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const Column(
      children: <Widget>[
        Center(
          child: Text(
            'Kişisel Font Kullanımı',
            style: TextStyle(
              fontFamily: 'Genel',
              fontSize: 36,
              fontWeight: FontWeight.w700,
            ),
          ),
        ),
        Center(
          child: Text(
            'Kişisel Font Kullanımı',
            style: TextStyle(
              fontFamily: 'ElYazisi',
              fontSize: 36,
            ),
          ),
        ),
        Center(
          child: Text(
            'Kişisel Font Kullanımı',
            style: TextStyle(
              //fontFamily: 'Genel',
              fontSize: 36,
              fontWeight: FontWeight.w700,
            ),
          ),
        ),
        Center(
          child: Text(
            'Kişisel Font Kullanımı',
            style: TextStyle(
              fontFamily: 'Genel',
              fontSize: 36,
            ),
          ),
        ),
        Center(
          child: Text(
            'Kişisel Font Kullanımı',
            style: TextStyle(
              fontSize: 36,
            ),
          ),
        ),
      ],
    );
  }
}
