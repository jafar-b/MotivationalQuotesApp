import 'package:flutter/material.dart';
import 'package:motivationalquotesapp/screens/categories/alone.dart';
import 'package:motivationalquotesapp/screens/categories/anniversary.dart';
import 'package:motivationalquotesapp/screens/categories/attitude.dart';
import 'package:motivationalquotesapp/screens/categories/birthday.dart';
import 'package:motivationalquotesapp/screens/categories/fitness.dart';
import 'package:motivationalquotesapp/screens/categories/friendship.dart';
import 'package:motivationalquotesapp/screens/categories/goodmorning.dart';
import 'package:motivationalquotesapp/screens/categories/goodnight.dart';
import 'package:motivationalquotesapp/screens/categories/love.dart';
import 'package:motivationalquotesapp/screens/categories/positive.dart';
import 'package:motivationalquotesapp/screens/categories/relationship.dart';
// import 'package:motivationalquotesapp/screens/Others.dart';
import 'package:motivationalquotesapp/screens/home.dart';
import 'package:motivationalquotesapp/screens/premiumfeatures.dart';

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
      routes: {
        '/premiumfeatures':(context)=>premiumFeatures(),
        '/others':(context)=>Others(),
        '/relationship':(context)=>relationship(),
        '/love':(context)=>love(),
        '/birthday':(context)=>birthday(),
        '/goodmorning':(context)=>goodmorning(),
        '/goodnight':(context)=>goodnight(),
        '/attitude':(context)=>attitude(),
        '/fitness':(context)=>fitness(),
        '/friendship':(context)=>friendship(),
        '/positive':(context)=>positive(),
        '/anniversary':(context)=>anniversary(),
         '/alone':(context)=>alone(),
        // '/alone': (context) => alone(),
      },
    title: 'Motivational Quotes',
    debugShowCheckedModeBanner: false,
    theme: ThemeData(
    colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
    useMaterial3: true,
    ),
    home: home(),
    );
  }
}








