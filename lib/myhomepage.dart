import 'package:fitness_chalnge/firtpage.dart';
import 'package:flutter/material.dart';

import 'model/character_screen.dart';


class MyHomePage extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    
    return Scaffold(

        appBar: AppBar(
          title: Text(
            "Latest News",
            style: TextStyle(color: Colors.black, fontSize: 17),
          ),
          elevation: 0.0,
          centerTitle: true,
          leading: IconButton(
            padding: EdgeInsets.only(left: 10.0),
            icon: Icon(Icons.arrow_back_ios),
            onPressed: () {},
          ),
          actions: [
            IconButton(
              icon: Icon(
                Icons.search_outlined,
              ),
              onPressed: () {},
            ),
          ],
          // flexibleSpace:Container(
          //   decoration: BoxDecoration(
          //     gradient: LinearGradient(
          //       colors: [
          //         Colors.white.withOpacity(0.6),
          //         Colors.lightBlue
          //       ],
          //       begin: Alignment.topLeft,
          //       end: Alignment.bottomRight
          //     )
          //   ),
          // ) ,
        ),
        body: NewsApp(),
    );
  }
}
