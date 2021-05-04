import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:food_diary/ui/card_box.dart';

import 'boxes.dart';

class MainPage extends StatefulWidget {
  @override
  _MainPageState createState() => _MainPageState();
}

class _MainPageState extends State<MainPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0.0,
        leading: IconButton(onPressed: (null),
            icon: Icon(Icons.menu)),
        title: Text(("Food Diary")),
        actions: [
          Icon(Icons.search),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 16.0),
            child: IconButton(onPressed: (null), icon: Icon(Icons.notifications)),
          ),
          IconButton(onPressed: (){}, icon: Icon(Icons.more_vert))
        ],
      ),
      body: Stack(
        children: [
          CardUp(),
          DialBox(),

        ],
      ),
    );
  }
}
