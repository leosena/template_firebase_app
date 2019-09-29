import 'package:baska_da_galera/business/auth.dart';
import 'package:baska_da_galera/models/user.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:firebase_auth/firebase_auth.dart';

import '../../business/auth.dart';


class drawerMenu extends StatelessWidget {
  final String renderUrl;

  drawerMenu(this.renderUrl);

  @override
  Widget build(BuildContext context) {

    return Drawer(
      child: ListView(
        padding: EdgeInsets.zero,
        children: <Widget>[
          DrawerHeader(
            child: Text('Drawer Header'),
          ),
          ListTile(
            title: Text('Log Out'),
            onTap: () => print(renderUrl),
          ),
        ],
      ),
    );

  }

}