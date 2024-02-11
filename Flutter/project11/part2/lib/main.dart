import 'dart:convert';
import 'package:flutter/material.dart';
import 'package:flutter_hive_dersleri/model/ogrenci.dart';
import 'package:flutter_secure_storage/flutter_secure_storage.dart';
import 'package:hive_flutter/hive_flutter.dart';

// flutter packages pub run build_runner build
// flutter packages pub run build_runner build --delete-conflicting-outputs

Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Hive.initFlutter('uygulama');
  //encryted
  FlutterSecureStorage secureStorage = const FlutterSecureStorage();
  var containsEncryptionKey = await secureStorage.containsKey(key: 'key');
  if (!containsEncryptionKey) {
    var key = Hive.generateSecureKey();
    await secureStorage.write(key: 'key', value: base64UrlEncode(key));
  }

  var encryptionKey = base64Url.decode(await secureStorage.read(key: 'key') ?? 'halil');
  print('Encryption key: $encryptionKey');

  var sifreliKutu = await Hive.openBox('ozel', encryptionCipher: HiveAesCipher(encryptionKey));
  await sifreliKutu.put('secret', 'Hive is cool');
  await sifreliKutu.put('sifre', '123456');

  print(sifreliKutu.get('secret'));
  print(sifreliKutu.get('sifre'));

  await Hive.openBox('test');

  Hive.registerAdapter(OgrenciAdapter());
  Hive.registerAdapter(GozRenkAdapter());
  await Hive.openBox<Ogrenci>('ogrenciler');

  await Hive.openLazyBox<int>('sayilar');

  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: const MyHomePage(title: 'Flutter Demo Home Page'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({Key? key, required this.title}) : super(key: key);

  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  int _counter = 0;

  void _incrementCounter() async {
    var box = Hive.box('test');
    await box.clear();

    box.add('Halil'); //index 0, key 0 value emre
    box.add('Bugday'); //index 1, key 1 value altunbilek
    box.add(true);
    box.add(123); //index 3, key 3 value 123
    //await box.addAll(['liste1', 'liste2', false, 9532]);

    await box.put('tc', '12345678963');
    await box.put('tema', 'dark');
    //await box.putAll({'araba': 'mercedes', 'yil': 2012});

    /* box.values.forEach((element) {
      debugPrint(element.toString());
    }); */
    debugPrint(box.toMap().toString());
    debugPrint(box.get('tema')); //key ile erişim
    debugPrint(box.getAt(0)); //index ile erişim
    debugPrint(box.get(0)); //index ile erişim

    debugPrint(box.get('tc')); //index ile erişim
    debugPrint(box.getAt(4)); //index ile erişim
    debugPrint(box.length.toString());
    await box.delete('tc');
    await box.deleteAt(0);
    debugPrint(box.toMap().toString());
    await box.putAt(0, 'yeni değer');
    debugPrint(box.toMap().toString());

    await box.put('isim', 'Halil');
    await box.put('isim', 'Bugday');
  }

  void _customData() async {
    var emre = Ogrenci(5, 'emre', GozRenk.MAVI);
    var hasan = Ogrenci(15, 'hasan', GozRenk.YESIL);

    var box = Hive.box<Ogrenci>('ogrenciler');
    await box.clear();
    box.add(emre);
    box.add(hasan);

    box.put('emre', emre);
    box.put('hasan', hasan);

    debugPrint(box.toMap().toString());
  }

  void _lazyAndEncrytedBox() async {
    var sayilar = Hive.lazyBox<int>('sayilar');
    for (int i = 0; i < 50; i++) {
      await sayilar.add(i * 50);
    }

    for (int i = 0; i < 50; i++) {
      debugPrint((await sayilar.getAt(i)).toString());
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.title),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            const Text(
              'You have pushed the button this many times:',
            ),
            Text(
              '$_counter',
              style: Theme.of(context).textTheme.headlineMedium,
            ),
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: _lazyAndEncrytedBox,
        tooltip: 'Increment',
        child: const Icon(Icons.add),
      ),
    );
  }
}
