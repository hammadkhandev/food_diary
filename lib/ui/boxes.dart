import 'package:flutter/material.dart';

import 'graph.dart';

class DialBox extends StatefulWidget {
  @override
  _DialBoxState createState() => _DialBoxState();
}

class _DialBoxState extends State<DialBox> {
  List<String> imagesPath = [
    'assets/images/check-list.png',
    'assets/images/checklist.png',
    'assets/images/moving delivery.png',
    'assets/images/cooking (1).png',
    'assets/images/microwave.png',
    'assets/images/hot-dish.png',
    //'assets/images/hot-food.png',
  ];

  List<String> names = [
    'Opening',
    'Closing',
    'Delivery',
    'Cooking',
    'Reheating',
    'Hot',
  ];
  List<String> name = [
    'Checks',
    'Checks',
    ' ',
    '& Cooling',
    ' ',
    'Holding',
  ];

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 500,
      child: ListView(children: [
        Padding(
          padding: const EdgeInsets.all(8.0),
          child: Column(
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  BoxCard(
                    path: imagesPath[0],
                    line1: names[0],
                    line2: name[0],
                  ),
                  BoxCard(
                    path: imagesPath[1],
                    line1: names[1],
                    line2: name[1],
                  ),
                  BoxCard(
                    path: imagesPath[2],
                    line1: names[2],
                    line2: name[2],
                  ),
                ],
              ),
              SizedBox(
                height: 20,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  BoxCard(
                    path: imagesPath[3],
                    line1: names[3],
                    line2: name[3],
                  ),
                  BoxCard(
                    path: imagesPath[4],
                    line1: name[4],
                    line2: names[4],
                  ),
                  BoxCard(
                    path: imagesPath[5],
                    line1: names[5],
                    line2: name[5],
                  ),
                ],
              ),
            ],
          ),
        ),
      ]),
    );
  }
}

class BoxCard extends StatefulWidget {
  String path, line1, line2;

  BoxCard({required this.path, required this.line1, required this.line2});

  @override
  _BoxCardState createState() => _BoxCardState();
}

class _BoxCardState extends State<BoxCard> {
  @override
  Widget build(BuildContext context) {
    return Stack(
      alignment: const Alignment(-1.42, -3.5),
      children: [
        Container(
          width: 110,
          height: 60,
          decoration: BoxDecoration(
            color: Colors.redAccent.shade100,
            borderRadius: BorderRadius.circular(8),
          ),
          child: Align(
            alignment: Alignment(0.8, 0),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  widget.line1,
                  style: TextStyle(
                    fontSize: 16,
                    fontWeight: FontWeight.bold,
                    color: Colors.white,
                  ),
                ),
                Text(
                  "${widget.line2}",
                  style: TextStyle(
                    fontSize: 16,
                    fontWeight: FontWeight.bold,
                    color: Colors.white,
                  ),
                ),
              ],
            ),
          ),
        ),
        CircleAvatar(
          child: Image.asset(
            widget.path,
            height: 35,
            width: 35,
          ),
          // backgroundImage: AssetImage(widget.path,),
          backgroundColor: Colors.white,

          radius: 26,
        ),
      ],
    );
  }
}
