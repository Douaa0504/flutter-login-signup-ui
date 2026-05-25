import 'package:flutter/material.dart';
import 'screens/login_screen.dart';

void main() {
  runApp(MyApp());
}

/*
  StatelessWidget:
  widget statique
  ne change pas dynamiquement
*/

class MyApp extends StatelessWidget {

  @override
  Widget build(BuildContext context) {

    /*
      MaterialApp:
      structure principale application
    */

    return MaterialApp(
      // remove debug banner
      debugShowCheckedModeBanner: false,

      // first page
      home: LoginScreen(),
    );
  }

}