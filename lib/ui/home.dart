import 'dart:ui';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';



class ScreenUi extends StatefulWidget {
  @override
  _ScreenUiState createState() => _ScreenUiState();
}

class _ScreenUiState extends State<ScreenUi> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: Icon(Icons.menu_rounded),
       // automaticallyImplyLeading: true,
        title: Text("Food Diary"),
       // centerTitle: true,
        actions: [Icon(Icons.search),Icon(Icons.notifications_none),],
       // backgroundColor: Colors.white,
        elevation: 0,
      ),
      body: Container(
        child: Column(
          children: [
            Container(
              child: Row(
                children: [
              //         ListTile(
              //         leading: Icon(Icons.local_grocery_store_outlined,size: 24.8,color: Colors.white,),
              //         title: Text("""Food mo
              //                         ⭐⭐⭐⭐⭐""",),
              //         subtitle: Text("[149]"),
              //           trailing: Icon(Icons.call,color: Colors.lightGreen,),
              // ),
                  Icon(Icons.local_grocery_store_outlined,size: 24.8,color: Colors.white,),
                  Text("""Food mo
              //          ⭐⭐⭐⭐⭐""",),
                  SizedBox(height: 10,),
                  Text("""\$\$\$\$. Canadian (New),
                  Dessert
                  Win Bar
                  Website
                   """, ),
                ],
              ),
              decoration: BoxDecoration(
               // gradient: Gradient.linear(from, to, colors)
              //  borderRadius:Radius.circular(12.0),
                color: Colors.transparent,
              ),

            ),
          SizedBox(height: 20,),
         Box(),
          ],
        ),
      ),
    );
  }
}

class Box extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Row(
         children: [
           Container(
             height:20 ,
             width: 30,
             child:Text("data"),
           ),
           Positioned(
             top: 150,
             left: 150,
             child: CircleAvatar(
               backgroundColor: Colors.greenAccent[400],
               radius: 100,
               child: Text(
                 'logo',
                 style: TextStyle(fontSize: 25, color: Colors.white),
               ), //Text
             ),
           ),
         ],

      ),

    );
  }
}
