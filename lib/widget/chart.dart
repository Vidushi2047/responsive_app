import 'package:fl_chart/fl_chart.dart';
import 'package:flutter/material.dart';

class Chart extends StatelessWidget {
  const Chart({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 200,
      child: Stack(
        children: [
          PieChart(PieChartData(
              sectionsSpace: 0,
              centerSpaceRadius: 70,
              startDegreeOffset: -90,
              sections: [
                PieChartSectionData(
                    showTitle: false,
                    color: Colors.yellow,
                    radius: 17,
                    value: 25),
                PieChartSectionData(
                    showTitle: false,
                    color: Colors.purple,
                    radius: 19,
                    value: 25),
                PieChartSectionData(
                    showTitle: false,
                    color: const Color.fromARGB(255, 3, 53, 95),
                    radius: 21,
                    value: 25),
                PieChartSectionData(
                    showTitle: false,
                    color: Colors.lightBlue,
                    radius: 23,
                    value: 25),
                PieChartSectionData(
                    showTitle: false, color: Colors.red, radius: 25, value: 25),
              ])),
          const Positioned.fill(
              child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(
                '29.1',
                style: TextStyle(fontSize: 25, fontWeight: FontWeight.w700),
              ),
              Text(
                'of 128 GB',
                style: TextStyle(fontSize: 20, fontWeight: FontWeight.w200),
              )
            ],
          ))
        ],
      ),
    );
  }
}
