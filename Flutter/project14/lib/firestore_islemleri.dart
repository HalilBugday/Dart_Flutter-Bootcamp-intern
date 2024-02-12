import 'dart:async';
import 'dart:io';

import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_storage/firebase_storage.dart';
import 'package:flutter/material.dart';
import 'package:image_picker/image_picker.dart';

// ignore: must_be_immutable
class FirestoreIslemleri extends StatelessWidget {
  FirestoreIslemleri({Key? key}) : super(key: key);

  final FirebaseFirestore _firestore = FirebaseFirestore.instance;
  StreamSubscription? _userSubscribe;
  @override
  Widget build(BuildContext context) {
    //IDLer
    //debugPrint(_firestore.collection('users').id);
    //debugPrint(_firestore.collection('users').doc().id);
    return Scaffold(
      appBar: AppBar(
        title: const Text('Firestore Islemleri'),
      ),
      body: Center(
        child: Column(
          children: [
            ElevatedButton(
              onPressed: () => veriEklemeAdd(),
              child: const Text('Veri Ekle Add'),
            ),
            ElevatedButton(
              onPressed: () => veriEklemeSet(),
              style: ElevatedButton.styleFrom(backgroundColor: Colors.green),
              child: const Text('Veri Ekle Set'),
            ),
            ElevatedButton(
              onPressed: () => veriGuncelleme(),
              style: ElevatedButton.styleFrom(backgroundColor: Colors.yellow),
              child: const Text('Veri Güncelle'),
            ),
            ElevatedButton(
              onPressed: () => veriSil(),
              style: ElevatedButton.styleFrom(backgroundColor: Colors.red),
              child: const Text('Veri Sil'),
            ),
            ElevatedButton(
              onPressed: () => veriOkuOneTime(),
              style: ElevatedButton.styleFrom(backgroundColor: Colors.pink),
              child: const Text('Veri Oku One Time'),
            ),
            ElevatedButton(
              onPressed: () => veriOkuRealTime(),
              style: ElevatedButton.styleFrom(backgroundColor: Colors.purple),
              child: const Text('Veri Oku Real Time'),
            ),
            ElevatedButton(
              onPressed: () => streamDurdur(),
              style: ElevatedButton.styleFrom(backgroundColor: Colors.teal),
              child: const Text('Stream Durdur'),
            ),
            ElevatedButton(
              onPressed: () => batchKavrami(),
              style: ElevatedButton.styleFrom(backgroundColor: Colors.indigo),
              child: const Text('Batch Kavramı'),
            ),
            ElevatedButton(
              onPressed: () => transactionKavrami(),
              style: ElevatedButton.styleFrom(backgroundColor: Colors.brown),
              child: const Text('Transaction Kavramı'),
            ),
            ElevatedButton(
              onPressed: () => queryingData(),
              style: ElevatedButton.styleFrom(backgroundColor: Colors.cyan),
              child: const Text('Veri Sorgulama'),
            ),
            ElevatedButton(
              onPressed: () => kameraGaleriImageUpload(),
              style: ElevatedButton.styleFrom(backgroundColor: Colors.blue),
              child: const Text('Kamera Galeri Image Upload'),
            ),
          ],
        ),
      ),
    );
  }

  veriEklemeAdd() async {
    Map<String, dynamic> eklenecekUser = <String, dynamic>{};
    eklenecekUser['isim'] = 'halil';
    eklenecekUser['yas'] = 25;
    eklenecekUser['ogrenciMi'] = false;
    eklenecekUser['adres'] = {'il': 'ankara', 'ilce': 'yenimahalle'};
    eklenecekUser['renkler'] = FieldValue.arrayUnion(['mavi', 'yeşil']);
    eklenecekUser['createdAt'] = FieldValue.serverTimestamp();
    await _firestore.collection('users').add(eklenecekUser);
  }

  veriEklemeSet() async {
    var yeniDocID = _firestore.collection('users').doc().id;

    await _firestore.doc('users/$yeniDocID').set({'isim': 'halil', 'userID': yeniDocID});

    await _firestore.doc('users/sNdIJXGgPUPl5L3sZGQK').set({'okul': 'IYTE', 'yas': FieldValue.increment(-5)}, SetOptions(merge: true));
  }

  veriGuncelleme() async {
    await _firestore.doc('users/sNdIJXGgPUPl5L3sZGQK').update({'adres.ilce': 'yeni ilçe'});
  }

  veriSil() async {
    await _firestore.doc('users/sNdIJXGgPUPl5L3sZGQK').delete();
    //CRUD
    await _firestore.doc('users/sNdIJXGgPUPl5L3sZGQK').update({'okul': FieldValue.delete()});
  }

  veriOkuOneTime() async {
    var usersDocuments = await _firestore.collection('users').get();
    debugPrint(usersDocuments.size.toString());
    debugPrint(usersDocuments.docs.length.toString());
    for (var eleman in usersDocuments.docs) {
      debugPrint('Döküman id ${eleman.id}');
      Map userMap = eleman.data();
      debugPrint(userMap['isim']);
    }

    var halilDoc = await _firestore.doc('users/lODl1rILhnEeqeiDjBbj').get();
    debugPrint(halilDoc.data()!['adres']['ilce'].toString());
  }

  veriOkuRealTime() async {
    //var _userStream = await _firestore.collection('users').snapshots();
    var userDocStream = _firestore.doc('users/lODl1rILhnEeqeiDjBbj').snapshots();
    _userSubscribe = userDocStream.listen((event) {
      /*  event.docChanges.forEach((element) {
        debugPrint(element.doc.data().toString());
      }); */

      debugPrint(event.data().toString());
    });
  }

  streamDurdur() async {
    await _userSubscribe?.cancel();
  }

  batchKavrami() async {
    WriteBatch batch = _firestore.batch();
    CollectionReference counterColRef = _firestore.collection('counter');

/*
    for (int i = 0; i < 100; i++) {
      var _yeniDoc = _counterColRef.doc();
      _batch.set(_yeniDoc, {'sayac': ++i, 'id':_yeniDoc.id});
    }*/

/*
    var _counterDocs = await _counterColRef.get();
    _counterDocs.docs.forEach((element) {
      _batch.update(
          element.reference, {'createdAt': FieldValue.serverTimestamp()});
    });*/

    var counterDocs = await counterColRef.get();
    for (var element in counterDocs.docs) {
      batch.delete(element.reference);
    }

    await batch.commit();
  }

  transactionKavrami() async {
    _firestore.runTransaction((transaction) async {
      //1emrenin bakiyesini öğren
      //emreden 100 lira düş
      //hasana 100 lira ekle
      DocumentReference<Map<String, dynamic>> emreRef = _firestore.doc('users/lODl1rILhnEeqeiDjBbj');
      DocumentReference<Map<String, dynamic>> hasanRef = _firestore.doc('users/UdpwK3unAKMMciZWUjKc');

      var emreSnapshot = await transaction.get(emreRef);
      var emreBakiye = emreSnapshot.data()!['para'];
      if (emreBakiye > 100) {
        var yeniBakiye = emreSnapshot.data()!['para'] - 100;
        transaction.update(emreRef, {'para': yeniBakiye});
        transaction.update(hasanRef, {'para': FieldValue.increment(100)});
      }
    });
  }

  queryingData() async {
    var userRef = _firestore.collection('users').limit(5);

/*
    for (var user in _sonuc.docs) {
      debugPrint(user.data().toString());
    } */

    /*  for (var user in _sirala.docs) {
      debugPrint(user.data().toString());
    } */

    var stringSearch = await userRef.orderBy('email').startAt(['emre']).endAt(['emre'  '\uf8ff']).get();
    for (var user in stringSearch.docs) {
      debugPrint(user.data().toString());
    }
  }

  kameraGaleriImageUpload() async {
    print('fonksiyon çalıstı');
    final ImagePicker picker = ImagePicker();

    XFile? file = await picker.pickImage(source: ImageSource.gallery);
    print('image secildi ');
    if (file == null) {
     print('image null ');
    }
    var profileRef = FirebaseStorage.instance.ref('users/profil_resimleri/user_id');
    print(file?.name.toString());
    var task = profileRef.putFile(File(file!.path));
    debugPrint('yükleme başlatılacak');
    task.whenComplete(() async {
      var url = await profileRef.getDownloadURL();
      debugPrint('yükleme bitti');
      _firestore.doc('users/QPoLlmM3wLok9WQTlKrs').set({'profile_pic': url.toString()}, SetOptions(merge: true));
      debugPrint(url);
    });
  }
}
