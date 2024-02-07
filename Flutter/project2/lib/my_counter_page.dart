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
//ignore_for_file: prefer_const_constructors_in_immutables

class MyCounterPage extends StatefulWidget {
  MyCounterPage({Key? key}) : super(key: key);

  @override
  _MyCounterPageState createState() => _MyCounterPageState();
}

class _MyCounterPageState extends State<MyCounterPage> {
  int _sayac = 0;

  @override
  Widget build(BuildContext context) {
    debugPrint('myhomepage build çalıştı');
    return Scaffold(
      appBar: AppBar(
       
        title: Text('My Counter AppBar'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            MyNewTextWidget(),
            Text(
              _sayac.toString(),
              // ignore: deprecated_member_use
              style: Theme.of(context).textTheme.headline1,
            ),
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          debugPrint('buton tıklandı ve sayac değeri $_sayac');

          sayaciArttir();
        },
        child: Icon(Icons.add),
      ),
    );
  }

  void sayaciArttir() {
    print('1');
    setState(() {
      _sayac++;
      print('2');
    });
    print('3');
  }
}

class MyNewTextWidget extends StatelessWidget {
  const MyNewTextWidget({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Text(
      'Butona basılma miktarı',
      style: TextStyle(fontSize: 24),
    );
  }
}
