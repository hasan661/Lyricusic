import 'package:flutter/material.dart';

import '/data.dart';
import '../widgets/item.dart';

class SingersScreen extends StatefulWidget {
  @override
  _SingersScreenState createState() => _SingersScreenState();
}

class _SingersScreenState extends State<SingersScreen> {
  @override
  Widget build(BuildContext context) {
    final id = ModalRoute.of(context)!.settings.arguments as Map;

    final ids=id["id"];
  

    List displayedsingers = Singers.where((element) {
      for (var i = 0; i < Singers.length; i++) {
        if (element.belongingid == ids) {
          return true;
        }
        return false;
      } 
      return false;
    }).toList();
    return Scaffold(
      appBar: AppBar(),
      body: ListView(children: [
        ...displayedsingers.map((e) {
          return Item.singer(e.name, e.Url, e.id, e.belongingid);
        }),
      ]),
    );
  }
}
