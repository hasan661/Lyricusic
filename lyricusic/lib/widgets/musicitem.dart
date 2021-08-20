import 'package:flutter/material.dart';
class MusicItem extends StatelessWidget {
  final songname;
  final singername;
  final lyrics;
  

  MusicItem({required this.lyrics, required this.singername, required this.songname});

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {
       
      },
      borderRadius: BorderRadius.circular(15),
      child: ListTile(leading: IconButton(onPressed: (){}, icon: Icon(Icons.play_arrow)), title: Text(songname), subtitle: Text(singername),trailing: TextButton(onPressed: (){}, child: Text("Lyrics")),),
    );
  }
}