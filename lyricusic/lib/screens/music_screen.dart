import 'package:flutter/material.dart';

import 'package:lyricusic/data.dart';
import 'package:lyricusic/widgets/musicitem.dart';


class MusicScreen extends StatefulWidget {
  static const routename = "/musicscreen";

  final filters;
  MusicScreen(this.filters);



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
      print(widget.filters);
      for (var i = 0; i < songs.length; i++) {

        if (element.singerid == id) {
          // print(widget.isLove);
          return true;

        }
        return false;
      }
      

      return false;
    }).toList();

    List filterdisplay=displayedsongs.where((element) {
      if(widget.filters["IsRock"]==false)
      {
        return element.isRock==false;
      }
      if(widget.filters["IsRap"]==false)
      {
        return element.isRap==false;
      }
      if(widget.filters["IsLoveSong"]==false)
      {
        return element.isLoveSong==false;
      }
      
      return true;
      
      
    }).toList();
    

    return Scaffold(
      appBar: AppBar(
        title: Text("Music"),
      ),
      body: ListView(
        children: [
          ...filterdisplay.map((e) {
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
