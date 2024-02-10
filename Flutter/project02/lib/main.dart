import 'package:flutter/material.dart';
import 'package:practic/popupmenu_kullanimi.dart';
import 'package:practic/image_widgets.dart';
import 'package:practic/my_counter_page.dart';
import 'package:practic/temel_buton_turleri.dart';

//ignore_for_file: prefer_const_constructors
//ignore_for_file: prefer_interpolation_to_compose_strings
//ignore_for_file: avoid_print
//ignore_for_file: sort_child_properties_last
//ignore_for_file: dartprefer_final_fields
//ignore_for_file: prefer_const_literals_to_create_immutables
//ignore_for_file: avoid_unnecessary_containers
//ignore_for_file: prefer_final_fields
//ignore_for_file: depend_on_referenced_packages
//ignore_for_file: unused_import

void main() {
  debugPrint('main metodu çalıştı');
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    debugPrint('myapp build çalıştı');
    return MaterialApp(
      title: 'My Counter App',
      theme: ThemeData(
        primarySwatch: Colors.purple,
        textButtonTheme: TextButtonThemeData(
          style: ButtonStyle(
            backgroundColor: MaterialStateProperty.all(Colors.blue),
          ),
        ),
        textTheme: TextTheme(
          // ignore: deprecated_member_use
          headline1: TextStyle(color: Colors.purple, fontWeight: FontWeight.bold),
        ),
      ),
      home: Scaffold(
        appBar: AppBar(
          title: Text('Buton Örnekleri'),
          actions: [PopupmenuKullanimi()],
        ),
        body: TemelButonlar(), //GIVE HERE THE CLASS NAMES!
      ),
    );
  }
}
