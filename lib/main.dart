import 'package:flutter/material.dart';
import 'package:baska_da_galera/ui/screens/root_screen.dart';
import 'package:baska_da_galera/ui/screens/sign_in_screen.dart';
import 'package:baska_da_galera/ui/screens/sign_up_screen.dart';
import 'package:baska_da_galera/ui/screens/main_screen.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'package:cloud_firestore/cloud_firestore.dart';

void main() {
  Firestore.instance.settings(timestampsInSnapshotsEnabled: true);
  SharedPreferences.getInstance().then((prefs) {
    runApp(MyApp(prefs: prefs));
  });
}

class MyApp extends StatelessWidget {
  final SharedPreferences prefs;
  MyApp({this.prefs});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Baska da Galera',
      debugShowCheckedModeBanner: false,
      routes: <String, WidgetBuilder>{
        '/root': (BuildContext context) => new RootScreen(),
        '/signin': (BuildContext context) => new SignInScreen(),
        '/signup': (BuildContext context) => new SignUpScreen(),
        '/main': (BuildContext context) => new MainScreen(),
      },
      theme: ThemeData(
        primaryColor: Colors.white,
        primarySwatch: Colors.grey,
      ),
      home: RootScreen(),
    );
  }

}
