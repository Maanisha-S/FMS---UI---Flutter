import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:fms_version2/screens/analysis/ui/widget/circular_chart.dart';

class AboveCardDesign extends StatelessWidget {
  const AboveCardDesign({super.key});

  @override
  Widget build(BuildContext context) {
    ScreenUtil.init(context);
    return Card(
      margin: EdgeInsets.symmetric(vertical: 10.h),
      color: const Color(0xFF003668),
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(20.w),
      ),
      child: Container(
          width: 353.w,
          height: 270.h,
          decoration: BoxDecoration(
            color: const Color(0xFF003668),
            borderRadius: BorderRadius.circular(30.w),
          ),
          padding: EdgeInsets.symmetric(horizontal: 15.h, vertical: 10.w),
          child: Column(
            children: [
              Text(
                "Let's finish those tasks that are still pending in #Cassini",
                style: TextStyle(
                    fontSize: 24.sp,
                    color: Colors.white,
                    fontWeight: FontWeight.w400,
                    fontFamily: "Poppins"),
              ),
              SizedBox(height: 20.h),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  Column(
                    children: [
                      CircularChartDesign(
                        holeLabel: '150',
                        completedNumber: 100.0,
                        remainingNumber: 0.0,
                        completedColor: Colors.orange[400]!,
                        remainingColor: Colors.blueGrey[600]!,
                      ),
                      _textDesign("Total Work")
                    ],
                  ),
                  Column(
                    children: [
                      CircularChartDesign(
                        holeLabel: '90',
                        completedNumber: 90.0,
                        remainingNumber: 10.0,
                        completedColor: Colors.teal[400]!,
                        remainingColor: Colors.white,
                      ),
                      _textDesign("Completed")
                    ],
                  ),
                  Column(
                    children: [
                      CircularChartDesign(
                        holeLabel: '60',
                        completedNumber: 60.0,
                        remainingNumber: 40.0,
                        completedColor: Colors.red[400]!,
                        remainingColor: Colors.white,
                      ),
                      _textDesign("Pending")
                    ],
                  ),
                ],
              ),
            ],
          )),
    );
  }

  Widget _textDesign(String text) {
    return Text(
      text,
      style: const TextStyle(color: Colors.white, fontFamily: "Poppins"),
    );
  }

}
