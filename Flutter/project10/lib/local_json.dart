import 'dart:convert';
import 'package:flutter/material.dart';
import 'model/araba_model.dart';

class LocalJson extends StatefulWidget {
  const LocalJson({Key? key}) : super(key: key);

  @override
  State<LocalJson> createState() => _LocalJsonState();
}

class _LocalJsonState extends State<LocalJson> {
  Future<List<Araba>> arabalarJsonOku() async {
    try {
      /* await Future.delayed(const Duration(seconds: 5), () {
        return Future.error('5 saniye sonra hata cıktı');
      });*/
      debugPrint('5 saniyelik işlem başlıyor');
      await Future.delayed(const Duration(seconds: 5), () {
        debugPrint('5 saniyelik işlem bitti');
      });
      String okunanString = await DefaultAssetBundle.of(context).loadString('assets/data/arabalar.json');

      var jsonArray = jsonDecode(okunanString);
      //debugPrint(okunanString);
      //debugPrint("*******************");

      /*
    List arabaListesi = jsonObject;
    debugPrint(arabaListesi[1]['model'][0]['fiyat'].toString());*/

      List<Araba> tumArabalar = (jsonArray as List).map((arabaMap) => Araba.fromMap(arabaMap)).toList();

      debugPrint(tumArabalar.length.toString());

      return tumArabalar;
    } catch (e) {
      debugPrint(e.toString());
      return Future.error(e.toString());
    }
  }

  String _title = 'Local Json Islemleri';

  late final Future<List<Araba>> _listeyiDoldur;

  @override
  void initState() {
    super.initState();
    _listeyiDoldur = arabalarJsonOku();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(_title),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          setState(() {
            _title = 'Buton tıklandı';
          });
        },
      ),
      body: FutureBuilder<List<Araba>>(
        future: _listeyiDoldur,
        initialData: [
          Araba(arabaAdi: 'aaa', kurulusYil: 1988, ulke: 'sad', model: [Model(modelAdi: 'a', fiyat: 52, benzinli: false)])
        ],
        builder: (context, snapshot) {
          if (snapshot.hasData) {
            List<Araba> arabaListesi = snapshot.data!;

            return ListView.builder(
                itemCount: arabaListesi.length,
                itemBuilder: (context, index) {
                  Araba oankiAraba = arabaListesi[index];
                  return ListTile(
                    title: Text(oankiAraba.arabaAdi),
                    subtitle: Text(oankiAraba.ulke),
                    leading: CircleAvatar(
                      child: Text(oankiAraba.model[0].fiyat.toString()),
                    ),
                  );
                });
          } else if (snapshot.hasError) {
            return Center(
              child: Text(snapshot.error.toString()),
            );
          } else {
            return const Center(
              child: CircularProgressIndicator(),
            );
          }
        },
      ),
    );
  }
}
