import 'package:flutter/material.dart';
import 'package:backdrop/backdrop.dart';

import 'boxes.dart';
import 'card_box.dart';
import 'downbar.dart';


class BackAppBar extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return BackdropScaffold(
      appBar: BackdropAppBar(
        leading: IconButton(onPressed: (null),
          icon: Icon(Icons.menu,color: Colors.black,)),
        title: Center(child: Text("Food Diary")),
        actions: [
          IconButton(onPressed: (null),
          icon: Icon(Icons.search,color: Colors.black,),),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 16.0),
            child: IconButton(onPressed: (null),
          icon: Icon(Icons.notifications_none,color: Colors.black,)),
          ),

        ],
        // actions: <Widget>[
        //   BackdropToggleButton(
        //     icon: AnimatedIcons.list_view,
        //   )
        // ],
      ),
      backLayer: Center(
        child: Text(" "),
      ),
      frontLayer:Scaffold(
     //  backgroundColor: Colors.white,
        body:CardUp(),



      ),

    );
  }
}
