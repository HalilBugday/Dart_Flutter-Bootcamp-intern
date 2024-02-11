import 'package:hive/hive.dart';
part 'ogrenci.g.dart';

@HiveType(typeId: 1)
class Ogrenci extends HiveObject {
  @HiveField(0, defaultValue: 555)
  final int id;

  @HiveField(1)
  final String isim;

  @HiveField(2)
  final GozRenk gozRengi;

  Ogrenci(this.id, this.isim, this.gozRengi);

  @override
  String toString() {
    return '$id - $isim - $gozRengi';
  }
}

@HiveType(typeId: 2)
enum GozRenk {
  @HiveField(0, defaultValue: true)
  SIYAH,

  @HiveField(1)
  MAVI,

  @HiveField(2)
  YESIL
}
