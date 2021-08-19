import 'dart:ffi';

import 'package:flutter/material.dart';

class IntroductoryScreen extends StatelessWidget {
  static const routename="/languages";
  const IntroductoryScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
  
    return Scaffold(
      // appBar: appbar,
      body: Center(
          child: Stack( 
            alignment: Alignment(0,-0.7),
            children: [
        Image.network(
          "https://wallpapercave.com/wp/wp3750267.jpg",
          width: MediaQuery.of(context).size.width -
              MediaQuery.of(context).padding.left,
          height: (MediaQuery.of(context).size.height),
          fit: BoxFit.cover,
        ),
        Padding(
            padding: EdgeInsets.all(8.0),
            child: ElevatedButton(onPressed: () {
              Navigator.of(context).pushNamed(routename);
            }, child: new Text("Continue")))
      ])),
    );
  }
}
