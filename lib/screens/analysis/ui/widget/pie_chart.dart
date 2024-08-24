import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:pie_chart/pie_chart.dart';

class PieChartPage extends StatelessWidget {
  const PieChartPage({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    ScreenUtil.init(context);
    final Map<String, double> pieChartData = {
      'HouseKeeping': 520,
      'Pantry': 250,
      'Meeting Room': 330,
    };
    final Map<String, Color> colorMap = {
      'HouseKeeping': const Color(0XFF003668),
      'Pantry': Colors.blue,
      'Meeting Room': Colors.yellow,
    };

    double total = pieChartData.values.reduce((a, b) => a + b);
    ScreenUtil.init(context);
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      children: [
        SizedBox(
          height: 100.0,
          child: Stack(
            alignment: Alignment
                .center, // Ensures the text is centered on the pie chart
            children: [
              PieChart(
                dataMap: pieChartData,
                colorList: colorMap.values.toList(),
                chartRadius: 80.0,
                chartType: ChartType.ring,
                ringStrokeWidth: 20.0,
                legendOptions: const LegendOptions(showLegends: false),
                chartValuesOptions: const ChartValuesOptions(
                  showChartValues: false,
                  showChartValuesOutside: false,
                ),
              ),
              const Text(
                "100",
                style: TextStyle(fontSize: 20, color: Colors.black),
              ),
            ],
          ),
        ),
        SizedBox(height: 20.h),
        Expanded(
          child: Wrap(
            spacing: 30.w,
            runSpacing: 10.w,
            children: pieChartData.entries.map((entry) {
              double percentage = (entry.value / total) * 100;
              return Row(
                mainAxisSize: MainAxisSize.min, // Allow rows to wrap
                children: [
                  Container(
                    width: 20.w,
                    height: 20.w,
                    decoration: BoxDecoration(
                      color: entry.key == 'HouseKeeping'
                          ? const Color(0XFF003668)
                          : entry.key == 'Pantry'
                          ? Colors.blue
                          : entry.key == 'Meeting Room'
                          ? Colors.yellow
                          : Colors.black,
                      shape: BoxShape.circle,
                    ),
                  ),
                  SizedBox(width: 5.w),
                  Text(
                    '${percentage.toStringAsFixed(1)}%',
                    style: const TextStyle(fontSize: 14.0, color: Colors.black),
                    overflow: TextOverflow.ellipsis,
                  ),
                  SizedBox(width: 4.w),
                  Text(
                    entry.key,
                    style: const TextStyle(fontSize: 14.0, color: Colors.black),
                    overflow: TextOverflow.ellipsis,
                    maxLines: 1,
                  ),
                ],
              );
            }).toList(),
          ),
        ),
      ],
    );
  }
}
