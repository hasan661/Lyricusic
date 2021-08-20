import 'package:flutter/material.dart';

import 'package:lyricusic/data.dart';
import 'package:lyricusic/widgets/musicitem.dart';

class MusicScreen extends StatefulWidget {
  static const routename = "/musicscreen";

  @override
  _MusicScreenState createState() => _MusicScreenState();
}

class _MusicScreenState extends State<MusicScreen> {
  @override
  Widget build(BuildContext context) {
    final id = ModalRoute.of(context)!.settings.arguments as String;

     List displayedsongs = songs.where((element) {
      for (var i = 0; i < songs.length; i++) {
        if (element.singerid == id) {
          return true;
        }
        return false;
      } 
      return false;
    }).toList();

    return Scaffold(
      appBar: AppBar(
        title: Text("Music"),
      ),
      body: MusicItem(),
    );
  }
}
