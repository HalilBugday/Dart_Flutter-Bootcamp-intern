import 'package:flutter/material.dart';
import 'package:flutter_storage/model/my_models.dart';
import 'package:flutter_storage/services/local_storage_service.dart';
import 'package:shared_preferences/shared_preferences.dart';

class SharedPreferenceService implements LocalStorageService {
  late final SharedPreferences preferences;

  SharedPreferenceService() {
    debugPrint('Shared pref kurucusu calıstı');
    init();
  }

  Future<void> init() async {
    preferences = await SharedPreferences.getInstance();
  }

  @override
  Future<void> verileriKaydet(UserInformation userInformation) async {
    final _name = userInformation.isim;
    preferences.setString('isim', _name);
    preferences.setBool('ogrenci', userInformation.ogrenciMi);
    preferences.setInt('cinsiyet', userInformation.cinsiyet.index);
    preferences.setStringList('renkler', userInformation.renkler);
  }

  @override
  Future<UserInformation> verileriOku() async {
    var _isim = preferences.getString('isim') ?? '';
    var _ogrenci = preferences.getBool('ogrenci') ?? false;
    var _cinsiyet = Cinsiyet.values[preferences.getInt('cinsiyet') ?? 0];
    var _renkler = preferences.getStringList('renkler') ?? <String>[];

    return UserInformation(_isim, _cinsiyet, _renkler, _ogrenci);
  }
}
