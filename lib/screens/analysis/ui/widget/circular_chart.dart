import 'package:circular_chart_flutter/circular_chart_flutter.dart';
import 'package:flutter/material.dart';

class CircularChartDesign extends StatelessWidget {
  final String holeLabel;
  final double completedNumber;
  final double remainingNumber;
  final Color completedColor;
  final Color remainingColor;

  const CircularChartDesign(
      {super.key,
      required this.holeLabel,
      required this.completedColor,
      required this.remainingColor,
      required this.completedNumber,
      required this.remainingNumber});

  @override
  Widget build(BuildContext context) {
    return AnimatedCircularChart(
      size: const Size(90.0, 90.0),
      initialChartData: <CircularStackEntry>[
        CircularStackEntry(
          <CircularSegmentEntry>[
            CircularSegmentEntry(
              completedNumber,
              completedColor,
              rankKey: 'completed',
            ),
            CircularSegmentEntry(
              remainingNumber,
              remainingColor,
              rankKey: 'remaining',
            ),
          ],
          rankKey: 'progress',
        ),
      ],
      chartType: CircularChartType.Radial,
      percentageValues: true,
      holeLabel: holeLabel,
      labelStyle: const TextStyle(
        color: Colors.white,
        fontWeight: FontWeight.bold,
        fontSize: 24.0,
      ),
    );
  }
}
