import 'package:azkar_app/HomeScreen.dart';
import 'package:azkar_app/Theme/My_Theme.dart';
import 'package:flutter/material.dart';

void main() {
  runApp( MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: MyTheme.lightTheme,
      home: Directionality(textDirection: TextDirection.rtl, child: HomeScreen())
    );
  }
}