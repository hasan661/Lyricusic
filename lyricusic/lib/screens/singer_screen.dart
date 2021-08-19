import 'package:flutter/material.dart';

import '/data.dart';
import '/widgets/languageitem.dart';
class SingersScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(appBar: AppBar(),body: GridView(
          gridDelegate: SliverGridDelegateWithMaxCrossAxisExtent(
            maxCrossAxisExtent: 400,
            childAspectRatio: 3/2,
            crossAxisSpacing: 20,
            mainAxisSpacing: 20,
          ),
          children: [...Singers.map((e) { 
            
            return LanguageItem.other(e.name, e.Url, e.id, e.belongingid);})]
        ) ,);
    
  }
}