import 'package:flutter/material.dart';
import 'navbar.dart';
import 'navigition bar.dart';
import 'butten bar.dart';
import 'Home.dart';
void main() => runApp(const TabBarApp());

class TabBarApp extends StatelessWidget {
  const TabBarApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(useMaterial3: true),
      home: BottomNavigationBarExample(),
    );
  }
}