import 'package:flutter/material.dart';
import 'package:flutter_dinamik_not/constants/app_constants.dart';

class OrtalamaGoster extends StatelessWidget {
  final double ortalama;
  final int dersSayisi;

  const OrtalamaGoster({
    required this.ortalama,
    required this.dersSayisi,
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.center,
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Text(
          dersSayisi > 0 ? '$dersSayisi Ders Girildi' : 'Ders Seçiniz',
          style: Sabitler.textStyle(16, FontWeight.w600, Sabitler.anaRenk),
        ),
        Text(
          ortalama >= 0 ? '${ortalama.toStringAsFixed(2)}' : '0.0',
          style: Sabitler.textStyle(55, FontWeight.w800, Sabitler.anaRenk),
        ),
        Text(
          'Ortalama',
          style: Sabitler.textStyle(16, FontWeight.w600, Sabitler.anaRenk),
        ),
      ],
    );
  }
}
