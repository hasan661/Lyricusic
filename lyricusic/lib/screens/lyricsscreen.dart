import 'package:flutter/material.dart';

class LyricsScreen extends StatelessWidget {
  static const routename = "/lyrics";

  @override
  Widget build(BuildContext context) {
    final appbar = AppBar(
      title: Text("Lyrics"),
    );
    final lyrics = ModalRoute.of(context)!.settings.arguments as String;

    return Scaffold(
      backgroundColor: Colors.deepOrangeAccent,
      appBar: appbar,
      body: // height: (MediaQuery.of(context).size.height-appbar.preferredSize.height-MediaQuery.of(context).padding.top),
          Stack(
        children: [
          Center(
              child: ListView(
            shrinkWrap: true,
            padding: const EdgeInsets.all(10.0),
            children: [
              Card(
                color: Colors.yellow,
                elevation: 200,
                child: Center(
                    child: Text(
                  lyrics,
                  style: (MediaQuery.of(context).size.width < 330)
                      ? Theme.of(context).textTheme.headline4
                      : Theme.of(context).textTheme.headline3,
                  textAlign: TextAlign.center,
                )),
              )
            ],
          )),
        ],
      ),
    );
  }
}
