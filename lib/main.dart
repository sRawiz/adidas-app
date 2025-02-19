import 'package:flutter/material.dart';
import 'package:flutter_application_1/home_screen_navi.dart';

void main() {
  runApp(
    MaterialApp(
      theme: ThemeData(
        scaffoldBackgroundColor: Colors.white,
      ),
      debugShowMaterialGrid: false,
      debugShowCheckedModeBanner: false,
      home: const HomeScreenNavi(),
    )
  );
}
