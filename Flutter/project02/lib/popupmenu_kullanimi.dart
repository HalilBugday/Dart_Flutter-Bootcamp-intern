import 'package:flutter/material.dart';

//ignore_for_file: prefer_const_constructors
//ignore_for_file: prefer_interpolation_to_compose_strings
//ignore_for_file: avoid_print
//ignore_for_file: sort_child_properties_last
//ignore_for_file: dartprefer_final_fields
//ignore_for_file: prefer_const_literals_to_create_immutables
//ignore_for_file: avoid_unnecessary_containers
//ignore_for_file: prefer_final_fields
//ignore_for_file: depend_on_referenced_packages
//ignore_for_file: library_private_types_in_public_api


class PopupmenuKullanimi extends StatefulWidget {
  const PopupmenuKullanimi({Key? key}) : super(key: key);

  @override
  _PopupmenuKullanimiState createState() => _PopupmenuKullanimiState();
}

class _PopupmenuKullanimiState extends State<PopupmenuKullanimi> {
  // ignore: unused_field
  String _secilenSeir = 'Ankara';
  List<String> renkler = ['mavi', 'yeşil', 'kırmızı', 'sari', 'siyah'];

  @override
  Widget build(BuildContext context) {
    return Center(
      child: PopupMenuButton<String>(
        onSelected: (String sehir) {
          print('secilen sehir : $sehir');
          setState(() {
            _secilenSeir = sehir;
          });
        },
        //child: Text(_secilenSeir),
        itemBuilder: (BuildContext context) {
          /* return <PopupMenuEntry<String>>[
            PopupMenuItem(
              child: Text('Ankara'),
              value: 'Ankara',
            ),
            PopupMenuItem(
              child: Text('Bursa'),
              value: 'Bursa',
            ),
            PopupMenuItem(
              child: Text('Van'),
              value: 'Van',
            ),
          ]; */

          return renkler
              .map(
                (String renk) => PopupMenuItem(
                  child: Text(renk),
                  value: renk,
                ),
              )
              .toList();
        },
      ),
    );
  }
}
