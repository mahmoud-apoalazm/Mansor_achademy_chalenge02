import 'package:fitness_chalnge/bulditemmodel.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import 'model/character_screen.dart';

class NewsApp extends StatelessWidget {
  List<Character> info = [
    Character(
        image: "assets/m1.jpg",
        titel: "Your Full Marathon Training",
        date: "May 20, 2021",
        lagan: "Lagan",
        num: "19"
        , color: Colors.green),
    Character(
        image: "assets/m2.jpg",
        titel: "Your Full Marathon Training",
        date: "May 20, 2021",
        lagan: "Lagan",
        num: "5"
        , color: Colors.green),
    Character(
        image: "assets/m3.jpg",
        titel: "Your Full Marathon Training",
        date: "May 20, 2021",
        lagan: "Lagan",
        num: "6"
        , color: Color.fromRGBO(255, 254, 224, 1)
    ),
    Character(
        image: "assets/m4.jpg",
        titel: "Your Full Marathon Training",
        date: "May 20, 2021",
        lagan: "Lagan",
        num: "35"
        , color: Colors.green
    ),
    Character(
        image: "assets/m4.jpg",
        titel: "Your Full Marathon Training",
        date: "May 20, 2021",
        lagan: "Lagan",
        num: "1", color: Color.fromRGBO(255, 254, 224, 1)),
  ];

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Material(
          elevation: 50,
          shadowColor: Colors.blueGrey.withOpacity(0.6),
          child: Container(
            padding: EdgeInsets.all(10.0),
            width: double.infinity,
            height: 70,
            decoration: BoxDecoration(
                gradient: LinearGradient(
                    colors: [Colors.grey.shade100, Colors.grey.shade100],
                    begin: Alignment.topLeft,
                    end: Alignment.bottomRight)),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Row(
                  children: [
                    IconButton(
                      onPressed: () {},
                      icon: Icon(Icons.sort),
                      color: Colors.blue,
                    ),
                    Text('sort'),
                    SizedBox(
                      width: 10,
                    ),
                    IconButton(
                      onPressed: () {},
                      icon: Icon(Icons.ad_units),
                      color: Colors.blue,
                    ),
                    Text('Refine')
                  ],
                ),
                Row(
                  children: [
                    IconButton(
                      onPressed: () {},
                      icon: Icon(Icons.crop_square),
                      color: Colors.grey,
                    ),
                    IconButton(
                      onPressed: () {},
                      icon: Icon(Icons.list),
                      color: Colors.blue,
                    ),
                  ],
                ),
              ],
            ),
          ),
        ),
        Expanded(
          child: Container(
            decoration: BoxDecoration(
                gradient: LinearGradient(colors: [
              Colors.grey.shade200,
              Colors.grey.shade400,
            ])),
            child: ListView.separated(
                physics: BouncingScrollPhysics(),
                itemBuilder: (context, index) => Buildnew(
                    image: info[index].image, title: info[index].titel, date: info[index].date, num: info[index].num, logan: info[index].lagan, color: info[index].color),
                separatorBuilder: (context, index) => Padding(
                      padding: const EdgeInsets.only(left: 20),
                      child: Container(
                        height: 1,
                        color: Colors.grey,
                      ),
                    ),
                itemCount: info.length),
          ),
        ),
      ],
    );
  }
}
