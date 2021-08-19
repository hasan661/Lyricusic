import 'package:flutter/material.dart';
import '/data.dart';

class LanguageItem extends StatelessWidget {
  static const routename = "/singer";
  final Url;
  final title;
  final id;
  var belongingid;
  LanguageItem(this.title, this.Url, this.id);
  LanguageItem.other(this.title, this.Url, this.id, this.belongingid);
  @override
  Widget build(BuildContext context) {
    
    return InkWell(
      onTap: () {
        Navigator.of(context).pushNamed(routename);
      },
      borderRadius: BorderRadius.circular(15),
      child: 
      Stack(
        alignment: Alignment(0, 0),
        children: [
          Container(
            width: double.infinity,
            child: Image.network(
              Url,
              fit: BoxFit.fill,
            ),
          ),
          Text(
            title,
            style: TextStyle(
              fontSize: 50,
              color: Colors.white,
              fontWeight: FontWeight.bold,
            ),
          ),
        ],
      ),
    );
    
  }
}
