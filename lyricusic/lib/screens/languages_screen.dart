import 'package:flutter/material.dart';
import 'package:lyricusic/widgets/languageitem.dart';

import '../data.dart';

class LanguagesScreen extends StatelessWidget {
  final List languages = ["English", "Hindi/Urdu", "Spanish"];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color.fromRGBO(255, 219, 88, 1),
        appBar: AppBar(
          title: Container(
              width: double.infinity,
              child: Text(
                "LYRICUSIC",
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                ),
                textAlign: TextAlign.justify,
              )),
        ),
        body: GridView(
          gridDelegate: SliverGridDelegateWithMaxCrossAxisExtent(
            maxCrossAxisExtent: 400,
            childAspectRatio: 3/2,
            crossAxisSpacing: 20,
            mainAxisSpacing: 20,
          ),
          children: [...Data.map((e) => LanguageItem(e.title,e.Url,e.id)).toList(),]
        ));
  }
}
