// import 'package:english_words/english_words.dart';
import 'package:flutter/material.dart';
import 'package:medisync/screens/welcomepage.dart';
// import 'package:provider/provider.dart';
// import 'screens/homepage.dart';
void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false, 
      home: WelcomePage());
  }
}

