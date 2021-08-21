import 'package:flutter/material.dart';
import 'package:lyricusic/screens/introductory_page_screen.dart';
import 'package:lyricusic/screens/languages_screen.dart';
import 'package:lyricusic/screens/lyricsscreen.dart';
import 'package:lyricusic/screens/music_screen.dart';
import 'package:lyricusic/screens/singer_screen.dart';
import 'package:lyricusic/widgets/item.dart';

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
        primarySwatch: Colors.indigo,
      ),
      routes: {
        '/': (ctx)=>IntroductoryScreen(),
        IntroductoryScreen.routename:(ctx)=>LanguagesScreen(),
        Item.routename:(ctx)=>SingersScreen(),
        MusicScreen.routename:(ctx)=>MusicScreen(),
        LyricsScreen.routename:(ctx)=>LyricsScreen()
      },
      
    );
  }
}
