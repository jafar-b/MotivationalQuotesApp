import 'package:flutter/material.dart';
import 'package:motivationalquotesapp/screens/home.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatefulWidget {
  const MyApp({super.key});

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  @override
  Widget build(BuildContext context){
    return  MaterialApp(
    title: 'Motivational Quotes',
    debugShowCheckedModeBanner: false,
    theme: ThemeData(
    colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
    useMaterial3: true,
    ),

    home: home(),

    ); ;
  }
}





