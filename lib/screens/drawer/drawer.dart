import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class MainDrawer extends StatelessWidget {
  const MainDrawer({super.key,});

  @override
  Widget build(BuildContext context) {
    return ClipPath(
        child: Stack(
          children: [
            BackdropFilter(
              filter: ImageFilter.blur(sigmaX: 5.0, sigmaY: 5.0),
              child: Container(
                width: 300.w,
                height: 852.h,
                decoration: BoxDecoration(
                  color: const Color(0xFF003668).withOpacity(0.85),
                ),
                child: Padding(
                  padding:  EdgeInsets.symmetric(vertical: 20.h,horizontal: 10.h),
                  child: ListView(
                    physics: const NeverScrollableScrollPhysics(),
                    children: [
                      Column(children: [
                        SizedBox(
                          width: 300.w,
                          height: 620.h,
                          child: Column(
                            children: [
                              Row(
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                                  Expanded(
                                    child: Row(
                                      mainAxisAlignment: MainAxisAlignment.center,
                                      children: [
                                        CircleAvatar(
                                          backgroundImage: const AssetImage(
                                              'images/customername.png'),
                                          radius: 47.r,
                                        ),
                                      ],
                                    ),
                                  ),
                                  InkWell(
                                    onTap: () {
                                      Navigator.pop(context);
                                    },
                                    child: Image.asset(
                                      'images/Sidebar.png',
                                      width: 50.w,
                                      height: 50.h,
                                      color: Colors.white,
                                    ),
                                  ),
                                ],
                              ),
                              SizedBox(height: 20.h),
                              Padding(
                                padding: EdgeInsets.only(right: 50.w),
                                child: Text(
                                  'Demo User',
                                  style: TextStyle(
                                    fontFamily: 'Poppins',
                                    fontSize: 18.sp,
                                    color: Colors.white,
                                  ),
                                ),
                              ),
                              SizedBox(height: 40.h),
                              ListTile(
                                title: Text(
                                  'Home',
                                  style: TextStyle(
                                    fontFamily: 'Poppins',
                                    fontSize: 16.sp,
                                    color: Colors.white,
                                  ),
                                ),
                                leading: Icon(
                                  Icons.home_rounded,
                                  size: 25.h,
                                  color: Colors.white,
                                ),
                              ),
                              ListTile(
                                title: Text(
                                  'admin1@gmail.com',
                                  style: TextStyle(
                                    fontFamily: 'Poppins',
                                    fontSize: 16.sp,
                                    color: Colors.white,
                                  ),
                                ),
                                leading: Icon(
                                  Icons.mail_outlined,
                                  size: 25.h,
                                  color: Colors.white,
                                ),
                              ),
                              ListTile(
                                title: Text(
                                  '9876543210',
                                  style: TextStyle(
                                    fontFamily: 'Poppins',
                                    fontSize: 16.sp,
                                    color: Colors.white,
                                  ),
                                ),
                                leading: Icon(
                                  Icons.phone,
                                  size: 25.h,
                                  color: Colors.white,
                                ),
                              ),
                              const Spacer(),
                              const Divider(
                                thickness: 1.5,
                                color: Colors.white,
                              ),
                              ListTile(
                                title: Text(
                                  'Log Out',
                                  style: TextStyle(
                                    fontFamily: 'Poppins',
                                    fontSize: 18.sp,
                                    color: Colors.white,
                                  ),
                                ),
                                leading: Icon(
                                  Icons.logout,
                                  size: 25.h,
                                  color: Colors.white,
                                ),
                              ),
                            ],
                          ),
                        )
                      ])
                    ],
                  ),
                ),
              ),
            ),

          ],
        ));
  }
}
