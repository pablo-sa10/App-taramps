import 'package:flutter/material.dart';
import 'package:fl_chart/fl_chart.dart';
import 'package:syncfusion_flutter_charts/charts.dart';
import 'package:syncfusion_flutter_charts/sparkcharts.dart';

class GraphicDisplay extends StatefulWidget {
  final int selectedGraph;
  const GraphicDisplay({super.key, required this.selectedGraph});

  @override
  State<GraphicDisplay> createState() => _GraphicDisplayState();
}

class _GraphicDisplayState extends State<GraphicDisplay> {
  @override
  Widget build(BuildContext context) {
    return Container(child: getGraphic(widget.selectedGraph));
  }

  Widget getGraphic(int graphNumber) {
    switch (graphNumber) {
      case 1:
        return Column(
          children: [
            const SizedBox(height: 50),
            SizedBox(
              height: 350,
              child: PieChart(
                PieChartData(
                  sections: [
                    PieChartSectionData(
                        color: Colors.red, value: 25, title: '25%'),
                    PieChartSectionData(
                        color: Colors.blue, value: 25, title: '25%'),
                    PieChartSectionData(
                        color: Colors.amber, value: 25, title: '25%'),
                    PieChartSectionData(
                        color: Colors.green, value: 25, title: '25%'),
                  ],
                ),
              ),
            )
          ],
        );
      case 2:
        return Column(
          children: [
            const SizedBox(height: 50),
            SizedBox(
              height: 400,
              child: LineChart(
                LineChartData(
                    lineBarsData: [
                      LineChartBarData(
                          spots: [
                            const FlSpot(0, 1),
                            const FlSpot(1, 3),
                            const FlSpot(2, 10),
                            const FlSpot(3, 15),
                            const FlSpot(4, 5),
                          ]
                      ),
                    ]
                ),
              ),
            ),
          ],
        );
      case 3:
        return const Text("grafico 3");
      case 4:
        return const Text("grafico 4");
      default:
        return const Text("selecione um grafico");
    }
  }
}
