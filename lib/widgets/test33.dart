import 'package:fl_chart/fl_chart.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class tadreeeeeeb extends StatelessWidget {
  const tadreeeeeeb({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Flutter Pie Chart Example'),
      ),
      body: Padding(
        padding: EdgeInsets.all(16.0),
        child: PieChartSample(),
      ),

    );
  }
}
class PieChartSample extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return PieChart(
      PieChartData(
        sectionsSpace: 0,
        centerSpaceRadius: 40,
        sections: [
          PieChartSectionData(
            color: Colors.blue,
            value: 40,
            title: '40%',
            radius: 80,
            titleStyle: TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
          ),
          PieChartSectionData(
            color: Colors.green,
            value: 30,
            title: '30%',
            radius: 80,
            titleStyle: TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
          ),
          PieChartSectionData(
            color: Colors.orange,
            value: 20,
            title: '20%',
            radius: 80,
            titleStyle: TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
          ),
          PieChartSectionData(
            color: Colors.red,
            value: 10,
            title: '10%',
            radius: 80,
            titleStyle: TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
          ),
        ],
      ),
    );
  }
}