import 'package:flutter/material.dart';

class LyricsScreen extends StatelessWidget {
  static const routename = "/lyrics";
  @override
  Widget build(BuildContext context) {
    final appbar = AppBar(
      title: Text("Lyrics"),
    );
    final lyrics = ModalRoute.of(context)!.settings.arguments as List;
    return Scaffold(
      appBar: appbar,
      body: // height: (MediaQuery.of(context).size.height-appbar.preferredSize.height-MediaQuery.of(context).padding.top),
          ListView.builder(
        itemBuilder: (ctx, index) {
          return Center(
                child: Text(
              "${lyrics[index]}",
              style: TextStyle(fontSize: 25, fontWeight: FontWeight.bold),
            ));
          
        },
        itemCount: lyrics.length,
      ),
    );
  }
}
