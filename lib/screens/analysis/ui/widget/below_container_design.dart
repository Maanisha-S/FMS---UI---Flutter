import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:fms_version2/screens/analysis/ui/widget/pie_chart.dart';

class BelowContainerDesign extends StatelessWidget {
  const BelowContainerDesign({super.key});

  @override
  Widget build(BuildContext context) {
    ScreenUtil.init(context);
    return Container(
      width: 370,
      height: 300,
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(20),
          border: Border.all(color: const Color(0XFF003668), width: 4)),
      child: Padding(
        padding: EdgeInsets.all(10.w),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              "Overview Analysis :",
              style: TextStyle(
                  color: const Color(0XFF003668),
                  fontFamily: "Poppins",
                  fontWeight: FontWeight.w600,
                  fontSize: 18.sp),
            ),
            SizedBox(
              height: 10.w,
            ),
            const Expanded(
              child: PieChartPage(),
            ),
          ],
        ),
      ),
    );
  }
}
