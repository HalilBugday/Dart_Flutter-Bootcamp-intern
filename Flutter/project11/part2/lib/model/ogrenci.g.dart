// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'ogrenci.dart';

// **************************************************************************
// TypeAdapterGenerator
// **************************************************************************

class OgrenciAdapter extends TypeAdapter<Ogrenci> {
  @override
  final int typeId = 1;

  @override
  Ogrenci read(BinaryReader reader) {
    final numOfFields = reader.readByte();
    final fields = <int, dynamic>{
      for (int i = 0; i < numOfFields; i++) reader.readByte(): reader.read(),
    };
    return Ogrenci(
      fields[0] == null ? 555 : fields[0] as int,
      fields[1] as String,
      fields[2] as GozRenk,
    );
  }

  @override
  void write(BinaryWriter writer, Ogrenci obj) {
    writer
      ..writeByte(3)
      ..writeByte(0)
      ..write(obj.id)
      ..writeByte(1)
      ..write(obj.isim)
      ..writeByte(2)
      ..write(obj.gozRengi);
  }

  @override
  int get hashCode => typeId.hashCode;

  @override
  bool operator ==(Object other) => identical(this, other) || other is OgrenciAdapter && runtimeType == other.runtimeType && typeId == other.typeId;
}

class GozRenkAdapter extends TypeAdapter<GozRenk> {
  @override
  final int typeId = 2;

  @override
  GozRenk read(BinaryReader reader) {
    switch (reader.readByte()) {
      case 0:
        return GozRenk.SIYAH;
      case 1:
        return GozRenk.MAVI;
      case 2:
        return GozRenk.YESIL;
      default:
        return GozRenk.SIYAH;
    }
  }

  @override
  void write(BinaryWriter writer, GozRenk obj) {
    switch (obj) {
      case GozRenk.SIYAH:
        writer.writeByte(0);
        break;
      case GozRenk.MAVI:
        writer.writeByte(1);
        break;
      case GozRenk.YESIL:
        writer.writeByte(2);
        break;
    }
  }

  @override
  int get hashCode => typeId.hashCode;

  @override
  bool operator ==(Object other) => identical(this, other) || other is GozRenkAdapter && runtimeType == other.runtimeType && typeId == other.typeId;
}
