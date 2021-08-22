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
      return Text("${lyrics[i]}",style: 
                  (MediaQuery.of(context).size.width<330)?
                  Theme.of(context).textTheme.headline4:
                  Theme.of(context).textTheme.headline3,
                );
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
