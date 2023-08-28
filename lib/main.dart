import 'package:flutter/material.dart';

import 'package:mod_1_inicio/src/app.dart';
import 'package:mod_1_inicio/src/appP.dart';

void main() => runApp(const MyApp());

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner:false,
      //title: 'App Login',
      //home: MyAppForm(),
      title: 'App Login',
      home: MyAppFormP(),
    );
  }
}