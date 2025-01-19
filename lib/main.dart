import 'package:currency_converter/currency_coverter_page.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}
//Material Appf
//cupertino App

class MyApp extends StatelessWidget {
  const MyApp({super.key});
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,//disbale the debug banner
      home: CurrencyConverterMaterialPage(),
    );
  }
}
