import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

import 'package:flutter_design/src/pages/basic_page.dart';
import 'package:flutter_design/src/pages/buttons_page.dart';
import 'package:flutter_design/src/pages/scroll_page.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    SystemChrome.setSystemUIOverlayStyle(
      SystemUiOverlayStyle.light.copyWith(statusBarColor: Colors.black),
    );

    return MaterialApp(
      title: 'Designs',
      initialRoute: 'buttons',
      routes: {
        'basic': (BuildContext context) => BasicPage(),
        'scroll': (BuildContext context) => ScrollPage(),
        'buttons': (BuildContext context) => ButtonsPage(),
      },
    );
  }
}
