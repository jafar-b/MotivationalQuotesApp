import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:motivationalquotesapp/contactus.dart';
import 'package:motivationalquotesapp/createquote.dart';
import 'package:motivationalquotesapp/downloads.dart';
import 'package:motivationalquotesapp/faqpage.dart';
import 'package:motivationalquotesapp/favourites.dart';
import 'package:motivationalquotesapp/mycreations.dart';
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
import 'package:motivationalquotesapp/screens/home.dart';
import 'package:motivationalquotesapp/screens/premiumfeatures.dart';
import 'package:motivationalquotesapp/settings.dart';

void main() async{
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp();
  runApp(const MyApp());
}
class MyApp extends StatefulWidget {
  const MyApp({super.key});
  @override
  State<MyApp> createState() => _MyAppState();
}
class _MyAppState extends State<MyApp> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      routes: {
        '/creations': (context) => creations(),
        '/settings': (context) => SettingsPage(),
        '/faq': (context) => FAQPage(),
        '/downloads': (context) => downloads(),
        '/favourites': (context) => favourites(),
        '/contactus': (context) => ContactUsPage(),
        '/faqpage': (context) => FAQPage(),
        '/premiumfeatures': (context) => premiumFeatures(),
        '/others': (context) => Others(),
        '/relationship': (context) => relationship(),
        '/love': (context) => love(),
        '/birthday': (context) => birthday(),
        '/goodmorning': (context) => goodmorning(),
        '/goodnight': (context) => goodnight(),
        '/attitude': (context) => attitude(),
        '/fitness': (context) => fitness(),
        '/friendship': (context) => friendship(),
        '/positive': (context) => positive(),
        '/anniversary': (context) => anniversary(context),
        '/alone': (context) => alone(context),
        '/createquote': (context) => CreateQuote(),
        
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


