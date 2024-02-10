import 'package:flutter/material.dart';

import '/ui/ana_sayfa.dart';
import '/ui/arama.dart';
import '/ui/drawer_menu.dart';
import '/ui/page_view.dart';
import '/ui/tabs.dart';

void main() => runApp(const FlutterDersleri());

class FlutterDersleri extends StatelessWidget {
  const FlutterDersleri({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final ThemeData theme = ThemeData(
      fontFamily: 'Genel',
      primarySwatch: Colors.teal,
    );

    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter example',
      theme: theme.copyWith(
        colorScheme: theme.colorScheme.copyWith(secondary: Colors.orangeAccent),
      ),
      home: const MyHomePage(),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({Key? key}) : super(key: key);

  @override
  MyHomePageState createState() {
    return MyHomePageState();
  }
}

class MyHomePageState extends State<MyHomePage> {
  int secilenMenuItem = 0;
  late List<Widget> tumSayfalar;
  late AnaSayfa sayfaAna;
  late AramaSayfasi sayfaArama;
  late PageViewOrnek pageViewOrnek;

  var keyAnaSayfa = const PageStorageKey('key_ana_sayfa');
  var keyArama = const PageStorageKey('key_arama_sayfa');

  @override
  void initState() {
    super.initState();
    sayfaAna = AnaSayfa(keyAnaSayfa);
    sayfaArama = AramaSayfasi(keyArama);
    pageViewOrnek = const PageViewOrnek();
    tumSayfalar = [sayfaAna, sayfaArama, pageViewOrnek];
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: const DrawerMenu(),
      appBar: AppBar(
        title: const Text('Flutter project 8'),
      ),
      body: secilenMenuItem <= tumSayfalar.length - 1 ? tumSayfalar[secilenMenuItem] : tumSayfalar[0],
      bottomNavigationBar: bottomNavMenu(),
    );
  }

  Theme bottomNavMenu() {
    return Theme(
      data: ThemeData(canvasColor: Colors.cyan.shade100, primaryColor: Colors.orangeAccent),
      child: BottomNavigationBar(
        items: const <BottomNavigationBarItem>[
          BottomNavigationBarItem(icon: Icon(Icons.home), label: 'ExpansionTile', backgroundColor: Colors.amber),
          BottomNavigationBarItem(icon: Icon(Icons.search), activeIcon: Icon(Icons.call), label: 'Liste', backgroundColor: Colors.red),
          BottomNavigationBarItem(icon: Icon(Icons.add), label: 'PageView', backgroundColor: Colors.tealAccent),
          BottomNavigationBarItem(icon: Icon(Icons.account_box), label: 'Profil', backgroundColor: Colors.brown),
        ],
        type: BottomNavigationBarType.shifting,
        currentIndex: secilenMenuItem,
        onTap: (index) {
          setState(() {
            secilenMenuItem = index;
            if (index == 3) {
              Navigator.of(context).push(MaterialPageRoute(builder: (context) => const TabOrnek())).then((a) {
                secilenMenuItem = 0;
              });
            }
          });
        },
      ),
    );
  }
}
