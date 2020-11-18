import 'package:flutter/material.dart';
import 'screens/home_page.dart';

void main() {
  runApp(
    MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Dark Instagram',
      home: HomePage(),
      theme: ThemeData(
        primaryColor: Color(0xff3d3f50),
        accentColor: Color(0xff272936),
        backgroundColor: Color(0xff272936),
        appBarTheme: AppBarTheme(
          elevation: 0.0,
        ),
      ),
    ),
  );
}
