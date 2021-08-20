import 'package:flutter/material.dart';
class MusicItem extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {
       
      },
      borderRadius: BorderRadius.circular(15),
      child: ListTile(leading: IconButton(onPressed: (){}, icon: Icon(Icons.play_arrow)), title: Text("Dummy"), subtitle: Text("Dummy"),trailing: TextButton(onPressed: (){}, child: Text("Lyrics")),),
    );
  }
}