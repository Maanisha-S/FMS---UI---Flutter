import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:fms_version2/screens/route/routes.dart';
import 'package:fms_version2/widgets/material_button_design.dart';

class SuccessPage extends StatefulWidget {
  const SuccessPage({super.key});

  @override
  State<SuccessPage> createState() => _SuccessPageState();
}

class _SuccessPageState extends State<SuccessPage> {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: EdgeInsets.symmetric(horizontal: 20.w,),
        child: Column(
          children: [
            SizedBox(height: 40.h),
            Row(
              children: [
                SizedBox(width: 120.w),
                Text(
                  'Cassini',
                  style: TextStyle(
                      fontSize: 24.sp,
                      color: Colors.black,
                      fontWeight: FontWeight.w400,
                      fontFamily: "Poppins"
                  ),
                ),
              ],
            ),
            SizedBox(height: 60.h),
            Center(child: Image.asset('images/submitcheck.png')),
            SizedBox(height: 40.h),
            Text('Your responses have been',
                textAlign: TextAlign.center,
                style: TextStyle(
                    fontSize: 18.sp,
                    color: const Color(0xFF003668),
                    fontWeight: FontWeight.w600,
                    fontFamily: 'Poppins')),
            Text('successfully received.',
                textAlign: TextAlign.center,
                style: TextStyle(
                    fontSize: 18.sp,
                    color: const Color(0xFF003668),
                    fontWeight: FontWeight.w600,
                    fontFamily: 'Poppins')),
            SizedBox(height: 40.h),
            MaterialButtonDesign(
              height: 53.h,
              width: 240.w,
              text: 'Back To Dashboard',
              onTap: () {
                Navigator.pushNamedAndRemoveUntil(context, FmsRoutes.dashboardRoute, (route) => false);
              },
            ),
          ],
        ),
      ),
    );
  }
}
