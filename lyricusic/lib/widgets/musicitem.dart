import 'package:flutter/material.dart';
import 'package:lyricusic/screens/lyricsscreen.dart';
class MusicItem extends StatelessWidget {
  final songname;
  final singername;
  final lyrics;
  

  MusicItem({required this.lyrics, required this.singername, required this.songname});

  @override
  Widget build(BuildContext context) {
    return InkWell(
      
      borderRadius: BorderRadius.circular(15),
      child: ListTile(leading: IconButton(onPressed: (){
        
      }, icon: Icon(Icons.play_arrow)), title: Text(songname), subtitle: Text(singername),trailing: TextButton(onPressed: (){
        Navigator.of(context).pushNamed(LyricsScreen.routename, arguments: lyrics);
      }, child: Text("Lyrics")),),
    );
  }
}