import 'package:flutter/material.dart';
import 'package:flutter_easyloading/flutter_easyloading.dart';

//ignore_for_file: unused_import

import 'card_listtile.dart';
import 'custom_scroll_ve_slivers.dart';
import 'grid_view_kullanimi.dart';
import 'listview_layout_problemleri.dart';
import 'listview_kullanimi.dart';

void main() {
  runApp(MyApp());
  configLoading();
}

void configLoading() {
  EasyLoading.instance
    ..displayDuration = const Duration(milliseconds: 2000)
    ..indicatorType = EasyLoadingIndicatorType.fadingCircle
    ..loadingStyle = EasyLoadingStyle.custom
    ..indicatorSize = 45.0
    ..radius = 10.0
    ..progressColor = Colors.yellow
    ..backgroundColor = Colors.green
    ..indicatorColor = Colors.yellow
    ..textColor = Colors.white
    ..maskColor = Colors.blue.withOpacity(0.5)
    ..userInteractions = true
    ..dismissOnTap = true;
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Material App',
      home: CollapsableToolbarOrnek(), // CollapsableToolbarOrnek()
      builder: EasyLoading.init(),
    );
  }
}
