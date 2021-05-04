import 'dart:math';


import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

import 'boxes.dart';
import 'downbar.dart';

class CardUp extends StatefulWidget {
  @override
  _CardUpState createState() => _CardUpState();
}

class _CardUpState extends State<CardUp> {
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 500,
      child: ListView(

        children: [

          Card(
       //clipBehavior: Clip.antiAlias,

      //  margin: EdgeInsets.symmetric(horizontal: (0.0),
            elevation: 0.0,
          child:Container(
          margin: EdgeInsets.all(12),
          decoration: BoxDecoration(

          border: Border.all(width: 2,color: Colors.red.shade100, style: BorderStyle.solid),
          borderRadius: BorderRadius.circular(16.0),
          ),
          child: Column(
          children: [
            ListTile(
              leading: Image.asset("assets/images/icons8-cup.gif"),
             // leading: Icon(Icons.receipt_long),
              title: const Text('''Food Me
⭐⭐⭐⭐⭐'''),
              subtitle: Text(
                '[149]',
                style: TextStyle(color: Colors.black.withOpacity(0.6)),
              ),
            ),
          Padding(
          padding: const EdgeInsets.all(1.0),
          child: Row(
          children: [
            Container(
              child: Text(""" \$\$\$\$. Canadian (New),
  Dessert
  Win Bar
  Website""",
                style: TextStyle(color: Colors.black,fontSize: 17)
              ),
            ),
            Column(
              children: [
                Align(
                  alignment: Alignment.topRight,
                  widthFactor: 3.5 ,
                  child: FloatingActionButton(
                    backgroundColor: Colors.transparent,
                    elevation: 0.0,
                    onPressed: () {
                      // Respond to button press
                    },
                    child: Icon(Icons.call,color: Colors.lightGreen, size:35),
                  ),
                ),
                SizedBox(height: 5,),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children:[
                    SizedBox(width: 50,),
                Icon(FontAwesomeIcons.instagram),
                SizedBox(width: 10,),
                Icon(FontAwesomeIcons.facebookSquare),
                SizedBox(width:5),
                    Align(
                      alignment: Alignment.topRight,
                      widthFactor: 1.4,
                      child: FloatingActionButton(
                        mini: true,
                        backgroundColor: Colors.red.shade100,
                          elevation: 0.0,
                          onPressed: (){},
        child: Icon(Icons.bookmark_border,color: Colors.black, size:30)),
                    ),
                  ],),
              ],),
          ],),),
          ],),
          ),
          ),

  ],),

    );

  }
}
