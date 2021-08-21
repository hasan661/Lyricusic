import 'package:flutter/material.dart';

class LyricsScreen extends StatelessWidget {
  static const routename = "/lyrics";

  @override
  Widget build(BuildContext context) {
    final appbar = AppBar(
      title: Text("Lyrics"),
    );
    final lyrics = ModalRoute.of(context)!.settings.arguments as List;
    Widget list(var i) {
      return Text("${lyrics[i]}",style: TextStyle(color: Colors.black, fontSize: 25, fontWeight: FontWeight.bold),);
    }

    return Scaffold(
      // backgroundColor: Colors.green,
      appBar: appbar,
      body: // height: (MediaQuery.of(context).size.height-appbar.preferredSize.height-MediaQuery.of(context).padding.top),
          Stack(
            children: [
              Center(
                  child: ListView(
        shrinkWrap: true,
        padding: const EdgeInsets.all(20.0),
        children: [
              for (int i = 0; i < lyrics.length; i++) Center(child: list(i))
        ],
      )),
            ],
          ),
    );
  }
}
