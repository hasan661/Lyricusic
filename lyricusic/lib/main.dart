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
        textTheme: ThemeData.light().textTheme.copyWith(
              bodyText1: TextStyle(color: Color.fromRGBO(20, 51, 51, 1)),
              bodyText2: TextStyle(color: Color.fromRGBO(20, 51, 51, 1)),
              headline1: TextStyle(
                  fontSize: 30,
                  fontFamily: 'RobotoCondensed',
                  fontWeight: FontWeight.bold,
                  color: Colors.indigo),
              headline2: TextStyle(
                  fontSize: 25,
                  fontFamily: 'RobotoCondensed',
                  fontWeight: FontWeight.bold,
                  color: Colors.indigo),
              headline3: TextStyle(
                  fontSize: 22,
                  fontFamily: 'Raleway',
                  fontWeight: FontWeight.bold,
                  color: Colors.indigo),
              headline4: TextStyle(
                  fontSize: 18,
                  fontFamily: 'RobotoCondensed',
                  fontWeight: FontWeight.bold,
                  color: Colors.indigo),
            ),
      ),
      routes: {
        '/': (ctx) => IntroductoryScreen(),
        IntroductoryScreen.routename: (ctx) => LanguagesScreen(),
        Item.routename: (ctx) => SingersScreen(),
        MusicScreen.routename: (ctx) => MusicScreen(),
        LyricsScreen.routename: (ctx) => LyricsScreen()
      },
    );
  }
}
