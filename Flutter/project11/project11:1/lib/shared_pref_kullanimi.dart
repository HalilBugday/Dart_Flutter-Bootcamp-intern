// ignore_for_file: deprecated_member_use

import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter_storage/main.dart';
import 'package:flutter_storage/model/my_models.dart';

import 'services/local_storage_service.dart';

class SharedPreferenceKullanimi extends StatefulWidget {
  const SharedPreferenceKullanimi({Key? key}) : super(key: key);

  @override
  State<SharedPreferenceKullanimi> createState() => _SharedPreferenceKullanimiState();
}

class _SharedPreferenceKullanimiState extends State<SharedPreferenceKullanimi> {
  var _secilenCinsiyet = Cinsiyet.KADIN;
  var _secilenRenkler = <String>[];
  var _ogrenciMi = false;
  final TextEditingController _nameController = TextEditingController();
  final LocalStorageService _preferenceService = locator<LocalStorageService>();
  /* final LocalStorageService _preferenceService2 = SharedPreferenceService();
  final LocalStorageService _preferenceService3 = FileStorageService(); */

  @override
  void initState() {
    super.initState();
    _verileriOku();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('SharedPreference Kullanımı'),
      ),
      body: ListView(
        children: [
          ListTile(
            title: TextField(
              controller: _nameController,
              decoration: const InputDecoration(labelText: 'Adınızı Giriniz'),
            ),
          ),
          for (var item in Cinsiyet.values) _buildRadioListTiles(describeEnum(item), item),
          for (var item in Renkler.values) _buildCheckboxListTiles(item),
          SwitchListTile(
              title: const Text('Öğrenci Misin ? '),
              value: _ogrenciMi,
              onChanged: (bool ogrenciMi) {
                setState(() {
                  _ogrenciMi = ogrenciMi;
                });
              }),
          TextButton(
              onPressed: () {
                var _userInformation = UserInformation(_nameController.text, _secilenCinsiyet, _secilenRenkler, _ogrenciMi);

                _preferenceService.verileriKaydet(_userInformation);
              },
              child: const Text('Kaydet'))
        ],
      ),
    );
  }

  Widget _buildCheckboxListTiles(Renkler renk) {
    return CheckboxListTile(
        title: Text(describeEnum(renk)),
        value: _secilenRenkler.contains(describeEnum(renk)),
        onChanged: (bool? deger) {
          if (deger == false) {
            _secilenRenkler.remove(describeEnum(renk));
          } else {
            _secilenRenkler.add(describeEnum(renk));
          }
          setState(() {});
          debugPrint(_secilenRenkler.toString());
        });
  }

  Widget _buildRadioListTiles(String title, Cinsiyet cinsiyet) {
    return RadioListTile(
      title: Text(title),
      value: cinsiyet,
      groupValue: _secilenCinsiyet,
      onChanged: (Cinsiyet? secilmisCinsiyet) {
        setState(() {
          _secilenCinsiyet = secilmisCinsiyet!;
        });
      },
    );
  }

  void _verileriOku() async {
    var info = await _preferenceService.verileriOku();
    _nameController.text = info.isim;
    _secilenCinsiyet = info.cinsiyet;
    _secilenRenkler = info.renkler;
    _ogrenciMi = info.ogrenciMi;
    setState(() {});
  }
}
