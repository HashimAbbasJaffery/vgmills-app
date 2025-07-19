import 'package:flutter/material.dart';
import 'package:internet_connection_checker_plus/internet_connection_checker_plus.dart';
import 'package:vgmills/constants/Colors.dart';
import 'package:vgmills/screens/Animal.dart';
import 'package:vgmills/screens/Home.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'VGMILLS',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: primary),
      ),
      home: const MyHomePage(title: 'VGMILLS'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key, required this.title});

  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  String keyword = "";
  
  void changeKeyword(value) {
    setState(() {
      keyword = value;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // body: Home(changeKeyword),
      body: Animal(),
    );
  }
}
