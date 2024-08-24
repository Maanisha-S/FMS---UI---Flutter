import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:fms_version2/screens/route/routes.dart';
import 'package:fms_version2/widgets/appbar_design.dart';

class CategoryPage extends StatelessWidget {
  const CategoryPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    ScreenUtil.init(context);
    return Scaffold(
      appBar: const AppBarDesign(),
      body: Padding(
        padding:  EdgeInsets.symmetric(horizontal: 20.w),
        child: Column(
          children: [
            SizedBox(height: 20.h),
            buildOptionContainer(
              text1: 'Gents Restroom ,\n Ladies Restroom, DA Restroom ',
              imagePath: 'images/house.png',
              text: 'House Keeping',
              onTap: () {  Navigator.pushNamed(context,  FmsRoutes.qrCodeRoute);},
            ),
            buildOptionContainer(
              text1: 'Pantry',
              imagePath: 'images/pantry.png',
              text: 'Pantry',
              onTap: () {},
            ),
            buildOptionContainer(
              text1: 'Meeting Room , Meeting Hall ',
              imagePath: 'images/meeting.png',
              text: 'Meeting Room',
              onTap: () {},
            ),
            buildOptionContainer(
              text1: 'Lobby , Reception',
              imagePath: 'images/lobby.png',
              text: 'Lobby',
              onTap: () {},
            ),
            buildOptionContainer(
              text1: 'Courtyard',
              imagePath: 'images/courtyard.png',
              text: 'Courtyard',
              onTap: () {},
            ),
          ],
        ),
      ),
    );
  }

  Widget buildOptionContainer({
    required String imagePath,
    required VoidCallback onTap,
    required String text,
    required String text1,
  }) {
    return Card(
      margin: EdgeInsets.symmetric(vertical: 10.h),
      color: const Color(0xFF003668),
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(20.w),
      ),
      child: InkWell(
        onTap: onTap,
        child: Container(
          width: 350.w,
          height: 80.h,
          decoration: BoxDecoration(
            color: const Color(0xFF003668),
            borderRadius: BorderRadius.circular(30.w),
          ),
          padding: EdgeInsets.symmetric(horizontal: 10.w),
          child: Row(
            children: [
              Image.asset(imagePath, width: 50.w),
              SizedBox(width: 10.w),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  SizedBox(height: 10.h,),
                  Text(
                    text,
                    style: TextStyle(
                      fontSize: 24.sp,
                      fontWeight: FontWeight.w400,
                      color: Colors.white,
                      fontFamily: "Poppins"
                    ),
                  ),
                  SizedBox(height: 4.h),
                  Text(
                    text1,
                    maxLines: 2,
                    softWrap: true,
                    style: TextStyle(
                      fontSize: 10.sp,
                      fontWeight: FontWeight.w400,
                      color: Colors.white,
                        fontFamily: "Poppins"
                    ),
                  ),
                ],
              ),
              const Expanded(child: SizedBox()),
              Image.asset('images/rightarrow.png'),
            ],
          ),
        ),
      ),
    );
  }
}
