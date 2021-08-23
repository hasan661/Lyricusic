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
    final map = ModalRoute.of(context)!.settings.arguments as Map;
    final id = map["id"];
    final title = map["name"];
    final url = map["Url"];
  
    
    List displayedsongs = songs.where((element) {
      for (var i = 0; i < songs.length; i++) {
        if (element.singerid == id) {
          // print(widget.isLove);
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
      body: ListView(
        children: [
          ...displayedsongs.map((e) {
            return MusicItem(
              songname: e.name,
              singername: title,
              lyrics: e.lyrics,
            );
          }).toList()
        ],
      ),
    );
  }
}
