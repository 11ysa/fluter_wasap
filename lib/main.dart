// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:flutter_codigo_whatsapp/pages/home_page.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        theme: ThemeData(
            appBarTheme: AppBarTheme(color: Color(0xff065E52)),
            floatingActionButtonTheme: FloatingActionButtonThemeData(
                backgroundColor: Color(0xff01c851))),
        title: "wasap",
        debugShowCheckedModeBanner: false,
        home: HomePage());
  }
}
