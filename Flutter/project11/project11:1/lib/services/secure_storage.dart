import 'dart:convert';

import 'package:flutter/cupertino.dart';
import 'package:flutter_secure_storage/flutter_secure_storage.dart';
import 'package:flutter_storage/model/my_models.dart';
import 'package:flutter_storage/services/local_storage_service.dart';

class SecureStorageService implements LocalStorageService {
  late final FlutterSecureStorage preferences;
  SecureStorageService() {
    debugPrint('secure storage kurucusu calıstı');
    preferences = const FlutterSecureStorage();
  }

  @override
  Future<void> verileriKaydet(UserInformation userInformation) async {
    final _name = userInformation.isim;
    await preferences.write(key: 'isim', value: _name);
    await preferences.write(key: 'ogrenci', value: userInformation.ogrenciMi.toString());
    await preferences.write(key: 'cinsiyet', value: userInformation.cinsiyet.index.toString());
    await preferences.write(key: 'renkler', value: jsonEncode(userInformation.renkler));
  }

  @override
  Future<UserInformation> verileriOku() async {
    var _isim = await preferences.read(key: 'isim') ?? '';

    var _ogrenciString = await preferences.read(key: 'ogrenci') ?? 'false'; // 'true' / 'false'

    var _ogrenci = _ogrenciString.toLowerCase() == 'true' ? true : false;
    var _cinsiyetString = await preferences.read(key: 'cinsiyet') ?? '0'; // '0', '1', '2'
    var _cinsiyet = Cinsiyet.values[int.parse(_cinsiyetString)];

    var _renklerString = await preferences.read(key: 'renkler');
    var _renkler = _renklerString == null ? <String>[] : List<String>.from(jsonDecode(_renklerString));

    return UserInformation(_isim, _cinsiyet, _renkler, _ogrenci);
  }
}
