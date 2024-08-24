import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:fms_version2/screens/dashboard/ui/widget/bottom_cntainer_design.dart';
import 'package:fms_version2/screens/dashboard/ui/widget/first_container_design.dart';
import 'package:fms_version2/screens/dashboard/ui/widget/second_container_design.dart';
import 'package:fms_version2/screens/drawer/drawer.dart';
import 'package:fms_version2/screens/route/routes.dart';

class DashBoardPage extends StatefulWidget {
  const DashBoardPage({super.key});

  @override
  State<DashBoardPage> createState() => _DashBoardPageState();
}

class _DashBoardPageState extends State<DashBoardPage> {
  final GlobalKey<ScaffoldState> _scaffoldKey = GlobalKey<ScaffoldState>();

  Widget StylishDrawer(){
    return

      ClipPath(
        child:Container(
            width:300.w,
            height:690.h,
            child:Stack(
              children: [
                BackdropFilter(
                  filter: ImageFilter.blur(sigmaX: 5.0,sigmaY:5.0 ),
                  child:Container(
                    //height:MediaQuery.of(context).size.height,
                    decoration: BoxDecoration(
                      color: Color(0xFF003668).withOpacity(0.80),
                    ),

                  ),
                ),
                Container(
                  child: ListView(
                    children: [
                      Column(
                          children:[
                            SizedBox(
                              width:300.w,
                              height:690.h,
                              child:Column(
                                children: [
                                  Row(
                                    mainAxisAlignment: MainAxisAlignment.center,
                                    children: [
                                      Expanded(
                                        child: Row(
                                          mainAxisAlignment: MainAxisAlignment.center,
                                          children: [
                                            CircleAvatar(
                                              backgroundImage: const AssetImage('images/customername.png'),
                                              radius: 47.r,
                                            ),
                                          ],
                                        ),
                                      ),
                                      InkWell(
                                        onTap: (){
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
                                    padding:  EdgeInsets.only(right: 50.w),
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

                          ]
                      )
                    ],
                  ),
                )
              ],
            )
        )
    );
  }


  @override
  Widget build(BuildContext context) {
    ScreenUtil.init(context);
    return Scaffold(
      key: _scaffoldKey,
      drawer:const MainDrawer(),

      body: Padding(
        padding: EdgeInsets.symmetric(horizontal: 20.w, vertical: 30.w),
        child: Column(
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                InkWell(
                    onTap: () {
                      _scaffoldKey.currentState!.openDrawer();
                    },
                    child: const Icon(
                      Icons.sort,
                      size: 40.0,
                    )),
                SizedBox(
                  height: 47.h,
                  width: 47.w,
                  child: CircleAvatar(
                      radius: 30,
                      backgroundColor: Colors.white,
                      child: Image.asset(
                        'images/customername.png',
                        fit: BoxFit.cover,
                      )),
                ),
              ],
            ),
            SizedBox(
              height: 10.w,
            ),
            FirstContainerDesign(
              text: "Cassini",
              image: 'images/buildname1.png',
              onTap: () {
                Navigator.pushNamed(context, FmsRoutes.analysisRoute);
              },
            ),
            const Divider(
              thickness: 2,
            ),
            SecondContainerDesign(
              text: "Pioneer",
              image: 'images/buildname2.png',
              onTap: () {},
            ),
            const Divider(
              thickness: 2,
            ),
            FirstContainerDesign(
              text: "Pathfinder",
              image: 'images/buildname3.png',
              onTap: () {},
            ),
            const Divider(
              thickness: 2,
            ),
            SecondContainerDesign(
              text: "Voyger",
              image: 'images/buildname4.png',
              onTap: () {},
            ),
            const Divider(
              thickness: 2,
            ),
            SizedBox(
              height: 50.h,
            ),
            const BottomContainerDesign(),
          ],
        ),
      ),
    );
  }

}
