import 'package:fitness_chalnge/model/character_screen.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

Widget Buildnew({
  required String image,
  required String title,
  required String date,
  required String logan,
  required String num,
  required Color color,
}){

  return Padding(
    padding: const EdgeInsets.all(10.0),
    child: Material(
      elevation: 40,
      borderRadius: BorderRadius.only(bottomRight: Radius.circular(20)),
      shadowColor: Colors.green,
      child: Row(
        children: [
          Material(

            elevation: 50,
            shadowColor: Colors.indigoAccent.withOpacity(0.2),
            borderRadius: BorderRadius.circular(20.0),
            child: Container(
              width: 120,
              height: 120,
              decoration: BoxDecoration(

                  borderRadius: BorderRadius.circular(30.0)
              ),
              child: Padding(
                padding: const EdgeInsets.all(2.0),
                child: ClipRRect(
                  borderRadius: BorderRadius.circular(20.0),
                  child: Image.asset(image,
                  fit: BoxFit.cover,

                  ),
                ),
              ),
            ),
          ),
          SizedBox(width: 20,),
          Container(
            height: 120,
            child: Column(
             mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                SizedBox(height: 15,),
                Row(
                  children: [
                    InkWell(
                      onTap: (){},
                      child: Container(
                        width: 75,
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(30.0),
                            color: Colors.green,
                        ),
                        child: Padding(
                          padding: const EdgeInsets.all(2.0),
                          child: Text("Running",style:TextStyle(color: Colors.white,fontSize: 13),textAlign: TextAlign.center,),
                        ),
                      ),
                    ),
                    SizedBox(width: 7,),
                    InkWell(
                      onTap: (){},
                      child: Container(
                        width: 75,
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(30.0),
                            color: color
                        ),
                        child: Padding(
                          padding: const EdgeInsets.all(2.0),
                          child: Text("Training",style:TextStyle(color: Colors.white,fontSize: 13),textAlign: TextAlign.center,),
                        ),
                      ),
                    ),
                  ],

                ),
                SizedBox(height: 6,),
                 Text(title),
                SizedBox(height: 10,),
                Text(date,style: TextStyle(color: Colors.grey.shade600),),
                Expanded(
                  child: Row(
                    children: [
                      IconButton(onPressed: (){}, icon: Icon(Icons.favorite_border)),
                      Text(logan,style: TextStyle(color: Colors.grey.shade600),),
                      SizedBox(height: 25,),
                      IconButton(onPressed: (){}, icon: Icon(Icons.comment)),
                      Text(num,style: TextStyle(color: Colors.grey.shade600),),

                    ],
                  ),
                )
              ],
            ),
          )

        ],
      ),
    ),
  );
}
