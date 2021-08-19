import 'package:flutter/material.dart';
import 'package:lyricusic/screens/introductory_page_screen.dart';
import 'package:lyricusic/screens/languages_screen.dart';
import 'package:lyricusic/screens/singer_screen.dart';
import 'package:lyricusic/widgets/languageitem.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Lyricusic',
      theme: ThemeData(
        primarySwatch: Colors.red,
      ),
      // home: IntroductoryScreen(),
      routes: {
        '/': (ctx)=>IntroductoryScreen(),
        IntroductoryScreen.routename:(ctx)=>LanguagesScreen(),
        LanguageItem.routename:(ctx)=>SingersScreen()
      },
      
    );
  }
}
