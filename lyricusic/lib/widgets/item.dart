import 'package:flutter/material.dart';
import 'package:lyricusic/screens/music_screen.dart';


class Item extends StatefulWidget {
  static const routename = "/singer";
  final Url;
  final title;
  final id;
  var belongingid;
  List whatever=[];
  
  Item(this.title, this.Url, this.id);
  Item.singer(
      this.title, this.Url, this.id, this.belongingid);

  @override
  _ItemState createState() => _ItemState();
}

class _ItemState extends State<Item> {
 

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {
        widget.belongingid==null ?
        Navigator.of(context)
            .pushNamed(Item.routename,arguments: widget.id):
        Navigator.of(context).pushNamed(MusicScreen.routename, arguments: {'id':widget.id, "name":widget.title, "Url":widget.Url});
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
