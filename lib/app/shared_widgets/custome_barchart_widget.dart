import 'package:flutter/material.dart';

import 'package:fl_chart/fl_chart.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class CustomBarchartWidget extends StatefulWidget {
  const CustomBarchartWidget({Key? key}) : super(key: key);

  @override
  State<CustomBarchartWidget> createState() => _CustomBarchartWidget();
}

class _CustomBarchartWidget extends State<CustomBarchartWidget> {
  late int showingTooltip;

  @override
  void initState() {
    showingTooltip = -1;
    super.initState();
  }

  BarChartGroupData generateGroupData(int x, int y) {
    return BarChartGroupData(
      x: x,
      showingTooltipIndicators: showingTooltip == x ? [0] : [],
      barRods: [
        BarChartRodData(
          toY: y.toDouble(),
          gradient: LinearGradient(
            begin: Alignment.topRight,
            end: Alignment.bottomLeft,
            colors: [
              Colors.indigo,
              Colors.blue,
            ],
          ),
        ),
      ],
    );
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 350,
      height: 300,
      child: BarChart(
        BarChartData(
          barGroups: [
            generateGroupData(0, 12),
            generateGroupData(1, 10),
            generateGroupData(2, 14),
            generateGroupData(3, 5),
            generateGroupData(4, 15),
            generateGroupData(5, 23),
            generateGroupData(6, 8),
          ],
          gridData: FlGridData(
            show: false,
          ),
          borderData: FlBorderData(
            show: true,
            border: Border(
              left: BorderSide(color: Colors.indigo, width: 2),
              bottom: BorderSide(color: Colors.indigo, width: 2),
            ),
          ),
          titlesData: FlTitlesData(
            topTitles: AxisTitles(),
            rightTitles: AxisTitles(),
            leftTitles: AxisTitles(
              sideTitles: SideTitles(
                  showTitles: true,
                  getTitlesWidget: leftTitles,
                  reservedSize: 42,
                  interval: 5),
            ),
            bottomTitles: AxisTitles(
              sideTitles: SideTitles(
                showTitles: true,
                getTitlesWidget: bottomTitles,
                reservedSize: 42,
              ),
            ),
          ),
          barTouchData: BarTouchData(
              enabled: true,
              handleBuiltInTouches: false,
              touchCallback: (event, response) {
                if (response != null &&
                    response.spot != null &&
                    event is FlTapUpEvent) {
                  setState(() {
                    final x = response.spot!.touchedBarGroup.x;
                    final isShowing = showingTooltip == x;
                    if (isShowing) {
                      showingTooltip = -1;
                    } else {
                      showingTooltip = x;
                    }
                  });
                }
              },
              mouseCursorResolver: (event, response) {
                return response == null || response.spot == null
                    ? MouseCursor.defer
                    : SystemMouseCursors.click;
              }),
        ),
      ),
    );
  }

  Widget bottomTitles(double value, TitleMeta meta) {
    final titles = <String>['Mn', 'Te', 'Wd', 'Tu', 'Fr', 'St', 'Su'];

    final Widget text = Text(
      titles[value.toInt()],
      style: const TextStyle(
        color: Colors.indigo,
        fontWeight: FontWeight.bold,
        fontSize: 14,
      ),
    );

    return SideTitleWidget(
      axisSide: meta.axisSide,
      space: 8, //margin top
      child: text,
    );
  }

  Widget leftTitles(double value, TitleMeta meta) {
    const style = TextStyle(
      color: Colors.indigo,
      fontWeight: FontWeight.bold,
      fontSize: 14,
    );

    return SideTitleWidget(
      axisSide: meta.axisSide,
      space: 2,
      child: Text("\$${value}", style: style),
    );
  }
}
