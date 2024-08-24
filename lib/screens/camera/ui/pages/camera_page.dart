import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:fms_version2/screens/route/routes.dart';
import 'package:fms_version2/widgets/material_button_design.dart';

class CameraPage extends StatefulWidget {
  const CameraPage({super.key});

  @override
  State<CameraPage> createState() => _CameraPageState();
}

class _CameraPageState extends State<CameraPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: EdgeInsets.symmetric(horizontal: 20.w),
        child: Column(
          children: [
            SizedBox(height: 40.h),
            Row(
              children: [
                InkWell(
                    onTap: () {
                      Navigator.pop(context);
                    },
                    child: Icon(Icons.chevron_left,
                        size: 40.sp, color: Colors.black)),
                    SizedBox(width: 90.w),
              ],
            ),
            SizedBox(height: 70.h),
             Center(child: Image.asset('images/camera.png')),
            MaterialButtonDesign(
              height: 53.h,
              width: 173.w,
              text: 'Submit',
              onTap: () {
                Navigator.pushReplacementNamed(context, FmsRoutes.successPageRoute);
              },
            ),
          ],
        ),
      ),
    );
  }
}
