import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';


class drawerBar extends StatefulWidget {
  final String name;

  drawerBar(this.name);

  _drawerBarState createState() => _drawerBarState(name);

}

class _drawerBarState extends State<drawerBar> {
  String name;

  _drawerBarState(this.name);

  @override
  Widget build(BuildContext context) {
    return new AppBar(
      //centerTitle: true,
      title: Text(this.name),
    );
  }


}