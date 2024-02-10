import 'package:flutter/material.dart';
import 'ogrenci_listesi.dart';

///Users/halilbugday/Desktop/test/practic/lib/ogrenci_listesi.dart

class OgrenciDetay extends StatelessWidget {
  final Ogrenci secilenOgrenci;
  const OgrenciDetay({required this.secilenOgrenci, Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    //var secilen = ModalRoute.of(context)!.settings.arguments as Ogrenci;

    //print('secilen ogrenci :::: ${secilen.isim}');
    return Scaffold(
      appBar: AppBar(
        title: Text('Ogrenci detay'),
      ),
      body: Center(
        child: Column(
          children: [
            Text(secilenOgrenci.id.toString()),
            Text(secilenOgrenci.isim),
            Text(secilenOgrenci.soyisim),
          ],
        ),
      ),
    );
  }
}
