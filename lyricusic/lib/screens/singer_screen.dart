import 'package:flutter/material.dart';

import '/data.dart';
import '/widgets/languageitem.dart';
class SingersScreen extends StatefulWidget {
  @override
  _SingersScreenState createState() => _SingersScreenState();
}

class _SingersScreenState extends State<SingersScreen> {
  
  @override
  Widget build(BuildContext context) {
    final id=ModalRoute.of(context)!.settings.arguments as String;

    List displayedsingers=Singers.where((element) {
      print("singers"+element.belongingid);
      print("other"+id);
      for(var i=0;i<Singers.length;i++)
      {
        if(element.belongingid==id){
        return true;
      }
      return false;

      }
      return false;
      
      
    }).toList();
    return Scaffold(appBar: AppBar(),body: 
    ListView(
         
          children: [
           
            
            ...displayedsingers.map((e) { 
            
            return LanguageItem.other(e.name, e.Url, e.id, e.belongingid);}),
            ]
        ) ,);
    
  }
}