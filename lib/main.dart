import 'package:flutter/material.dart';
import 'package:food_diary/ui/downbar.dart';
import 'package:food_diary/ui/home.dart';
import 'package:food_diary/ui/home_all.dart';
import 'package:food_diary/ui/page_o.dart';

import 'ui/boxes.dart';
import 'ui/page_i.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
       // backgroundColor: Colors.white,

        primaryColor: Colors.white,
        backgroundColor: Colors.white,
      ),
      // home: MainPage(),
    // home: BackAppBar(),
home: MyBottomBar(),
//HomeCon(),
     // DialBox(),
     // BoxCard(),


    //   home: MyBottomBar(),
    );
  }
}

