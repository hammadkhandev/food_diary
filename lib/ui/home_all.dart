import 'package:flutter/material.dart';
import 'package:food_diary/ui/graph.dart';

import 'boxes.dart';
import 'card_box.dart';
import 'downbar.dart';
import 'page_i.dart';


class HomeCon extends StatefulWidget {
  @override
  _HomeConState createState() => _HomeConState();
}

class _HomeConState extends State<HomeCon> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      //appBar: BackAppBar(),
      body: Stack(
        fit: StackFit.loose,
        children: [
          BackAppBar(),
          Align(
            alignment: Alignment(0.8,-0.65),
            child: Image.asset("assets/images/food-hygiene-rating.png",height: 100,width: 150,),
          ),
          Align(
            alignment: Alignment(0,3.5),
              child: DialBox()),
          Align(
              alignment: Alignment(0,5),
              child: PiGraph()),
         // MyBottomBar(),

        ],
      ),
    );

  }
}
