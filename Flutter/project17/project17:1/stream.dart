
// ignore_for_file: avoid_print

import 'dart:async';

Stream<int> getNumbers() async* {
  for (int i = 1; i < 5; i++) {
    yield i;
    yield i * 2;
    yield i * 3;
    await Future.delayed(const Duration(seconds: 1));

    /*  if (i == 2) {
      throw Exception('i 2 oldu hata çıktı');
    } */
  }
}

StreamController<int> _controller = StreamController<int>.broadcast();
Stream<int> get myStream => _controller.stream;
Sink<int> get mySink => _controller.sink;

//reactive programlama
void main(List<String> args) async {
  //temelStreamDinleme();
  //subscriptionIslemleri();
  // broadCastStreamVeStreamMetotlari();
  //streamMetotlariDevam();
  streamControllerKullanimi();
}

void streamControllerKullanimi() {
  myStream.map((event) => event * 2).listen((event) {
    print(event);
  });

  myStream.listen((event) {
    print(event);
  });

  veriEkle();
}

void veriEkle() async {
  mySink.add(5);
  await Future.delayed(const Duration(seconds: 1));
  mySink.add(10);
  await Future.delayed(const Duration(seconds: 1));
  mySink.add(15);
}

void temelStreamDinleme() {
  getNumbers().listen((event) {
    print(event);
  });
}

void subscriptionIslemleri() {
  var subscription = getNumbers().listen((data) {
    print(data);
  });
  subscription.onData((data) {
    print(data);
  });
  subscription.onError((err) {
    print("hata çıktı $err");
  });
  subscription.onDone(() {
    print("stream sonlandı yield edilen değer kalmadı");
  });
}

void broadCastStreamVeStreamMetotlari() async {
  final myStream = getNumbers().asBroadcastStream();

/*   myStream.listen((event) {
    print("1. listen $event");
  });

  myStream.listen((event) {
    print("2. listen $event");
  }); */

  //print("First kullanımı    " + (await myStream.first).toString());
  //print("Last kullanımı    " + (await myStream.last).toString());
  // print("Length kullanımı    " + (await myStream.length).toString());
  // print("Single Kullanımı   " + (await myStream.single).toString());
  //print("Contains kullanımı    " + (await myStream.contains(1)).toString());
  // print("ElementAt kullanımı    " + (await myStream.elementAt(2)).toString());
  //print("Any kullanımı    " + (await myStream.any((element) => element==99)).toString());
  print("Join kullanımı    ${await myStream.join(' ,')}");
}

void streamMetotlariDevam() async {
  final myStream = getNumbers();

  /* myStream.expand((element) => [element, element * 2, 99]).listen((event) {
    print(event);
  });*/

  /*  myStream.map((event) => event*5).listen((event) {
    print(event);
  }); */

  /* myStream.where((event) => event %2 != 0).listen((event) {
    print(event);
  }); */
  /*  myStream.take(2).listen((event) {
    print(event);
  }); */

  /*myStream.skip(1).listen((event) {
    print(event);
  });*/

  /* myStream.distinct().listen((event) {
    print(event);
  });*/

  myStream
      .distinct()
      .map((event) => event * 3)
      .where((event) => event > 20)
      .listen((event) {
    print(event);
  });
}
