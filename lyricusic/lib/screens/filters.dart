import 'package:flutter/material.dart';

class FilterScreen extends StatefulWidget {
  static const routename = "/filters";
  final filter;
  FilterScreen(this.filter);

  @override
  _FilterScreenState createState() => _FilterScreenState();
}

class _FilterScreenState extends State<FilterScreen> {
  Widget Switchlisttile(var text, var maptext) {
    return SwitchListTile(
      value: widget.filter[maptext],
      onChanged: (val) {
        setState(() {
          widget.filter[maptext] = val;
        });
      },
      title: Text(text),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Filters"),
      ),
      body: Column(
        children: [
          Switchlisttile("Rock", "IsRock"),
          Switchlisttile("Rap", "IsRap"),
          Switchlisttile("Love Song", "IsLoveSong"),
        ],
      ),
    );
  }
}
