import 'package:flutter/material.dart';
import 'package:pie_chart/pie_chart.dart';


class PiGraph extends StatefulWidget {
  @override
  _PiGraphState createState() => _PiGraphState();
}

class _PiGraphState extends State<PiGraph> {
  Map<String, double> dataMap = {

    "a": 5,

    "b": 2,

    //"c": 5,

  };
  List<Color> colorList = [
    Colors.redAccent.shade100,
    Colors.redAccent..withOpacity(0.4),
   // Colors.redAccent.shade400,

  //  Colors.yellow,
  ];
  @override
  Widget build(BuildContext context) {

    return Padding(
      padding: const EdgeInsets.only(top: 450),
      child: Stack(
        children: [

          PieChart(
            dataMap: dataMap,
            animationDuration: Duration(milliseconds: 500),
            chartLegendSpacing: 32,
            chartRadius: MediaQuery.of(context).size.width / 3.2,
            colorList: colorList,
            initialAngleInDegree: 270,
            chartType: ChartType.ring,
            ringStrokeWidth: 22,
//formatChartValues: ,
            centerText: """Complete""",

            legendOptions: LegendOptions(
              showLegendsInRow: false,
              legendPosition: LegendPosition.right,
              showLegends: false,
              legendShape: BoxShape.circle,


              //_BoxShape.circle,
              legendTextStyle: TextStyle(
                fontWeight: FontWeight.bold,

              ),
            ),
            chartValuesOptions: ChartValuesOptions(
              showChartValueBackground: false,
              showChartValues: false,
              showChartValuesInPercentage: false,
              showChartValuesOutside: false,
              decimalPlaces: 0,
            ),
          ),
          Center(
            child: Container(
              margin: EdgeInsets.only(bottom: 30),
              child: Text(
                '70%',
                style: TextStyle(
                  color: Colors.black,
                  fontWeight: FontWeight.w700, fontSize: 24.8,
                  shadows: [Shadow(
                  blurRadius: 24.8,
                  color: Colors.grey,
                  offset: Offset(5.0, 5.0),
                ),],
                ),
              ),
            ),
          ),
        ],
      ),

    );
    // return CircleAvatar(child: Container(
    //
    //   child: Text("75%"),
    // ));

  }
}
