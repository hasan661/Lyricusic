import 'package:flutter/material.dart';
import '/data.dart';

class LanguageItem extends StatefulWidget {
  static const routename = "/singer";
  final Url;
  final title;
  final id;
  var belongingid;
  List whatever=[];
  
  LanguageItem(this.title, this.Url, this.id);
  LanguageItem.other(
      this.title, this.Url, this.id, this.belongingid);

  @override
  _LanguageItemState createState() => _LanguageItemState();
}

class _LanguageItemState extends State<LanguageItem> {
 

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {
        Navigator.of(context)
            .pushNamed(LanguageItem.routename,arguments: widget.id);
        // fun();
      },
      borderRadius: BorderRadius.circular(15),
      child: Stack(
        alignment: Alignment(0, 0),
        children: [
          Container(
            width: double.infinity,
            child: Image.network(
              widget.Url,
              fit: BoxFit.fill,
            ),
          ),
          Text(
            widget.title,
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
