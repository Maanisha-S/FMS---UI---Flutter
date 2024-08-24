import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:fms_version2/screens/check_list/ui/widget/check_list_container_design.dart';
import 'package:fms_version2/screens/route/routes.dart';
import 'package:fms_version2/widgets/appbar_design.dart';
import 'package:fms_version2/widgets/material_button_design.dart';

class CheckListScreen extends StatefulWidget {
  const CheckListScreen({super.key});

  @override
  State<CheckListScreen> createState() => _CheckListScreenState();
}

class _CheckListScreenState extends State<CheckListScreen> {

  @override
  Widget build(BuildContext context) {

    final TextStyle dropdownTextStyle = TextStyle(
      fontSize: 16.sp,
      fontWeight: FontWeight.w500,
      fontFamily: 'Poppins',
      color: Colors.black,
    );

    return Scaffold(
      appBar: const AppBarDesign(),
      body: Padding(
        padding: EdgeInsets.symmetric(horizontal: 20.w),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            SizedBox(height: 20.h),
            Expanded(
              child: SingleChildScrollView(
               // scrollDirection: Axis.vertical,
                child: Column(
                  children: [
                    Row(
                      children: [
                        const CircleAvatar(
                          backgroundImage: AssetImage('images/Boys Logo.png'),
                          radius: 30,
                        ),
                        SizedBox(width: 30.w),
                        Text(
                          'Gents Restroom',
                          style: TextStyle(
                            fontSize: 20.sp,
                            fontFamily: 'Poppins',
                            fontWeight: FontWeight.w400,
                            color: Colors.black,
                          ),
                        ),
                      ],
                    ),
                    SizedBox(height: 30.h),
                    const CheckListContainerDesign(text : 'Handwash'),
                    SizedBox(height: 40.h),
                    const CheckListContainerDesign(text : 'Bucket'),
                    SizedBox(height: 40.h),
                    const CheckListContainerDesign(text : 'Water Tap'),
                    SizedBox(height: 40.h),
                    const CheckListContainerDesign(text : 'Wash Basin'),
                    SizedBox(height: 40.h),
                    const CheckListContainerDesign(text : 'Urinal Basin'),
                    SizedBox(height: 40.h),
                    Center(child: MaterialButtonDesign(height:53,width: 173,text: "Submit",onTap: (){
                      Navigator.pushNamed(context, FmsRoutes.cameraPageRoute);
                    },)),
                    SizedBox(height: 20.h),
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