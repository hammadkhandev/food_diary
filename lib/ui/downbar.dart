import 'dart:ffi';

import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

import 'boxes.dart';
import 'graph.dart';
import 'home_all.dart';
import 'page_o.dart';

class MyBottomBar extends StatefulWidget {
 MyBottomBar ({Key? key}) : super(key: key);
  @override
  _MyBottomBarState createState() => _MyBottomBarState();
}

class _MyBottomBarState extends State<MyBottomBar> {
  int _selectedIndex = 0;
  static const TextStyle optionStyle =
  TextStyle(fontSize: 30, fontWeight: FontWeight.bold);
  static List<Widget> _widgetOptions = <Widget>[
    // HomePage(),
    // HomePage(),
    // HomePage(),
    // HomePage(),
    //HomePage(),
    // MainPage(),
    // MainPage(),
    // MainPage(),
    // MainPage(),
    // MainPage(),
    HomeCon(),
    HomeCon(),
    HomeCon(),
    HomeCon(),
    HomeCon(),
    // PiGraph(),
    // PiGraph(),
    // PiGraph(),
  ];

  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(

      // bottomNavigationBar: BottomAppBar(
      //
      //   elevation: 12.0,
      //   clipBehavior: Clip.antiAlias,
      //   child:Row(
      //     mainAxisAlignment: MainAxisAlignment.spaceAround,
      //     children: [
      //       IconButton(onPressed: (){},
      //           icon: Icon(Icons.home_work_outlined),iconSize: 30,color: Colors.redAccent.shade100,),
      //       IconButton(onPressed: (){},
      //           icon: Icon(Icons.mail_outline),iconSize: 30,color: Colors.black.withOpacity(0.6),),
      //       IconButton(onPressed: (){},
      //           icon: Icon(Icons.add_circle_outline),iconSize: 30,color: Colors.black.withOpacity(0.6),),
      //       IconButton(onPressed: (){},
      //           icon: Icon(Icons.storefront),iconSize: 30,color: Colors.black.withOpacity(0.6),),
      //       IconButton(onPressed: (){},
      //           icon: Icon(Icons.food_bank_outlined),iconSize: 30,color: Colors.black.withOpacity(0.6),),
      //     ],
      //
      //   ),
      // ),
        // floatingActionButton:
        //
        // FloatingActionButton(child: Icon(Icons.add,), onPressed: () {}),
        // floatingActionButtonLocation:
        // FloatingActionButtonLocation.centerDocked,

      body: Container(
        child: _widgetOptions.elementAt(_selectedIndex),
      ),
      bottomNavigationBar: ClipRRect(
        clipBehavior: Clip.hardEdge,
        borderRadius: BorderRadius.only(
            topLeft: Radius.circular(25),
            topRight: Radius.circular(25),
            bottomLeft: Radius.circular(0),
            bottomRight: Radius.circular(0)),
        child: Container(
          child: BottomNavigationBar(
              items: <BottomNavigationBarItem>[
                BottomNavigationBarItem(
          icon: Icon(Icons.home_work_outlined,size: 30,color: Colors.black.withOpacity(0.6),),
                  // icon: Image.asset('assets/icon-home.png'),
                  // title: Text('Home'),
                  title: Text('♟'),
                ),
                BottomNavigationBarItem(
                  icon: Icon(Icons.mail_outline,size: 30,color: Colors.black.withOpacity(0.6),),
                 //  icon: Image.asset('assets/icon-mentors.png'),
                 //  title: Text('Messages'),
                  title: Text('♟'),
                ),
                BottomNavigationBarItem(
                  icon: Icon(Icons.add_circle_outline,size: 30,color: Colors.black.withOpacity(0.6),),
                  //  icon: Image.asset('assets/icon-mentors.png'),
                  //  title: Text('Add new role'),
                  title: Text('♟'),
                ),
                BottomNavigationBarItem(
                  icon: Icon(Icons.storefront,size: 30,color: Colors.black.withOpacity(0.6),),
                  // icon: Image.asset('assets/icon-messages.png'),
                  //  title: Text('Shop'),
                  title: Text('♟'),
                ),
                BottomNavigationBarItem(
                  icon: Icon(Icons.food_bank_outlined,size: 30,color: Colors.black.withOpacity(0.6),),
                  // icon: Image.asset('assets/icon-settings.png'),
                  //  title: Text('Food'),
                      title: Text('♟'),
                ),
              ],
              currentIndex: _selectedIndex,
              selectedItemColor: Colors.redAccent.shade100,
              onTap: _onItemTapped),
        ),
      ),
    );
  }
}
