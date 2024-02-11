// ignore_for_file: constant_identifier_names, deprecated_member_use

import 'package:flutter/foundation.dart';

enum Cinsiyet { KADIN, ERKEK, DIGER }

enum Renkler { SARI, MAVI, YESIL, PEMBE, KIRMIZI, MOR }

class UserInformation {
  final String isim;
  final Cinsiyet cinsiyet;
  final List<String> renkler;
  final bool ogrenciMi;

  UserInformation(this.isim, this.cinsiyet, this.renkler, this.ogrenciMi);

  Map<String, dynamic> toJson() {
    return {
      'isim': isim,
      'cinsiyet': describeEnum(cinsiyet), // cinsiyet ==>Cinsiyet.ERKEK ==>ERKEK
      'renkler': renkler,
      'ogrenciMi': ogrenciMi
    };
  }

  UserInformation.fromJson(Map<String, dynamic> json)
      : isim = json['isim'],
        cinsiyet = Cinsiyet.values.firstWhere((element) => describeEnum(element).toString() == json['cinsiyet']), // ERKEK ==> Cinsiyet.ERKEK
        renkler = List<String>.from(json['renkler']),
        ogrenciMi = json['ogrenciMi'];
}
