import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

import 'myhomepage.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(

      theme: ThemeData(
        appBarTheme: AppBarTheme(

          backgroundColor: Colors.white,
          elevation: 0.0,
          titleTextStyle: TextStyle
            (color: Colors.black,
            fontWeight: FontWeight.w400,
            fontSize: 17,
          ),
          backwardsCompatibility: false,
          systemOverlayStyle: SystemUiOverlayStyle(
            statusBarBrightness: Brightness.dark,
            statusBarColor: Colors.white,
            statusBarIconBrightness: Brightness.dark,
          ),
          iconTheme: IconThemeData(
            color: Colors.black
          ),

        ),
        primarySwatch: Colors.blue,
        canvasColor: Color.fromRGBO(255, 254, 224, 1)
      ),
      home: MyHomePage(),
    );
  }
}


