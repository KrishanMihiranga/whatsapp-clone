import 'package:flutter/material.dart';
import 'package:whatsapp/feature/welcome/pages/welcomePage.dart';

void main(){
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Whatsapp clone',
      theme: ThemeData.dark(),
      home: const WelcomePage(),
    );
  }
}
