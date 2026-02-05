import 'package:flutter/material.dart';
import 'pages/landing_page.dart';
import 'package:hive_flutter/hive_flutter.dart';

void main() async{

  //To initialize the hive database
  await Hive.initFlutter();

  //To open a box
  await Hive.openBox('myBox');

  runApp(const MainApp());
}

class MainApp extends StatelessWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: const LandingPage(),
      theme: ThemeData(
        appBarTheme: AppBarTheme(
          backgroundColor: Colors.blue,
        ),
      ),
    );
  }
}