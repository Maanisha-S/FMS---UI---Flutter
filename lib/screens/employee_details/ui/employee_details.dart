import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:fms_version2/screens/route/routes.dart';
import 'package:fms_version2/widgets/appbar_design.dart';
import 'package:fms_version2/widgets/material_button_design.dart';


class EmployeeDetails extends StatefulWidget {
  const EmployeeDetails({Key? key}) : super(key: key);

  @override
  State<EmployeeDetails> createState() => _EmployeeDetailsState();
}

class _EmployeeDetailsState extends State<EmployeeDetails> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: const AppBarDesign(),
      body: Padding(
        padding: EdgeInsets.symmetric(horizontal: 20.h),
        child: Column(
          children: [
            SizedBox(height: 20.h),
            const Hero(
              tag:'profile',
              child: Center(
                child: CircleAvatar(
                  foregroundColor: Colors.blue,
                  radius: 40,
                  backgroundImage: AssetImage('images/boylogo.png'),
                ),
              ),
            ),
            SizedBox(height: 20.h),
            Hero(
              tag: 'animation',
              child: SizedBox(
               // width: 400,
                child: Column(
                  children: [
                    SizedBox(height: 25.h),
                    Row(
                      children: [
                        Text('User Name',
                            style: TextStyle(
                                fontSize: 15.sp,
                                color: Colors.black,
                                fontWeight: FontWeight.w500,
                                fontFamily: 'Poppins')),
                        SizedBox(width: 70.w),
                        Text('Service wing',
                            style: TextStyle(
                                fontSize: 15.sp,
                                color: Colors.black,
                                fontWeight: FontWeight.w500,
                                fontFamily: 'Poppins')),
                      ],
                    ),
                    SizedBox(height: 10.h),
                    Row(
                      children: [
                        Image.asset('images/img1.png'),
                        SizedBox(width: 5.w),
                        Text('Demo User Name',
                            style: TextStyle(
                                fontWeight: FontWeight.w600,
                                fontFamily: 'Poppins',
                                fontSize: 13.sp,
                                color: const Color(0xFF003668))),
                        SizedBox(width: 20.w),
                        Image.asset('images/img2.png'),
                        SizedBox(width: 5.w),
                        Text('Gents Restroom 01',
                            style: TextStyle(
                                fontWeight: FontWeight.w600,
                                fontFamily: 'Poppins',
                                fontSize: 13.sp,
                                color: const Color(0xFF003668))),
                      ],
                    ),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        SizedBox(height: 20.h),
                        Text('Category',
                            style: TextStyle(
                                fontSize: 15.sp,
                                color: Colors.black,
                                fontFamily: 'Poppins',
                                fontWeight: FontWeight.w500)),
                        SizedBox(height: 10.h),
                        Row(
                          children: [
                            Image.asset('images/img3.png'),
                            SizedBox(width: 5.w),
                            Text('GEB-WH101-VOY-GFL-BZO-G17',
                                style: TextStyle(
                                    fontSize: 12.sp,
                                    color: const Color(0xFF003668),
                                    fontFamily: 'Poppins',
                                    fontWeight: FontWeight.w600)),
                          ],
                        ),
                        SizedBox(height: 20.h),
                        Text('Floor',
                            style: TextStyle(
                                fontSize: 14.sp,
                                color: Colors.black,
                                fontFamily: 'Poppins',
                                fontWeight: FontWeight.w500)),
                        SizedBox(height: 10.h),
                        Row(
                          children: [
                            Image.asset('images/img4.png'),
                            SizedBox(width: 5.w),
                            Text('GEB-WH101-VOY-GFL-BZO-G17',
                                style: TextStyle(
                                    fontSize: 12.sp,
                                    color: const Color(0xFF003668),
                                    fontFamily: 'Poppins',
                                    fontWeight: FontWeight.w600)),
                          ],
                        ),
                        SizedBox(height: 20.h),
                        Text('Schedule on',
                            style: TextStyle(
                                fontSize: 14.sp,
                                color: Colors.black,
                                fontFamily: 'Poppins',
                                fontWeight: FontWeight.w500)),
                        SizedBox(height: 10.h),
                        Row(
                          children: [
                            Image.asset('images/img5.png'),
                            SizedBox(width: 5.w),
                            Text('01 October,2023 - 10:00 Am',
                                style: TextStyle(
                                    fontSize: 12.sp,
                                    color: const Color(0xFF003668),
                                    fontFamily: 'Poppins',
                                    fontWeight: FontWeight.w600)),
                          ],
                        ),
                        SizedBox(height: 20.h),
                        Text('Due by',
                            style: TextStyle(
                                fontSize: 14.sp,
                                color: Colors.black,
                                fontFamily: 'Poppins',
                                fontWeight: FontWeight.w500)),
                        SizedBox(height: 10.h),
                        Row(
                          children: [
                            Image.asset('images/img5.png'),
                            SizedBox(width: 5.w),
                            Text('01 October,2023 - 12:00 Pm',
                                style: TextStyle(
                                    fontSize: 12.sp,
                                    color: const Color(0xFF003668),
                                    fontFamily: 'Poppins',
                                    fontWeight: FontWeight.w600)),
                          ],
                        ),
                        SizedBox(height: 40.h),
                        Center(
                          child: MaterialButtonDesign(
                            height: 53.h,
                            width: 190.w,
                            text: 'Start Activity',
                            onTap: () {
                              Navigator.pushNamed(context,FmsRoutes.checklistRoute);
                            },
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
              ),
            )

          ],
        ),
      ),
    );
  }
}
