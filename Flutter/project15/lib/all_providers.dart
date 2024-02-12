import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'sayac_manager.dart';
import 'model/sayac_model.dart';

final titleProvider = Provider<String>((ref) => 'Riverpod Basics');
final title2Provider = Provider<String>((ref) => 'Riverpod StateNotifier Kullanimi');

final textProvider = Provider<String>((ref) {
  return 'Butona basılma sayısı';
});

final sayacStateProvider = StateProvider<int>((ref) {
  return 0;
});

//1. parametre yani SayacManager iş kodlarının, metotların olduğu dosyadır
//Buna erişmek için ref.watch(sayacNotifierProvider.notifier) demek gerekir

//2. parametre yani SayacModel ise bu providerin state'idir.
//Buna erişmek için ref.watch(sayacNotifierProvider) demek gerekir.
//SayacModel sınıfındaki sayaç değeri için
// var sayacDegeri = ref.watch(sayacNotifierProvider).sayacDegeri
final sayacNotifierProvider = StateNotifierProvider<SayacManager, SayacModel>((ref) {
  return SayacManager();
});

final ciftMiprovider = Provider<bool>((ref) {
  var sayacModel = ref.watch(sayacNotifierProvider);

  /*  if (sayacModel.sayacDegeri % 2 == 0) {
    return true;
  } else {
    return false;
  } */

  return sayacModel.sayacDegeri % 5 == 0;
});
