import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class BottomContainerDesign extends StatelessWidget {
  const BottomContainerDesign({super.key});

  @override
  Widget build(BuildContext context) {
    ScreenUtil.init(context);
    return Hero(
      tag: 'container',
      child: Container(
        width: 370.w,
        height: 153.h,
        decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(20.sp),
            border: Border.all(color: const Color(0XFF003668), width: 4.w)),
        child: Padding(
          padding: EdgeInsets.all(10.w),
          child: Row(
            children: [
              SizedBox(
                height: 90.h,
                width: 90.w,
                child: CircleAvatar(
                    radius: 30,
                    backgroundColor: Colors.white,
                    child: Image.asset(
                      'images/customername.png',
                      fit: BoxFit.cover,
                    )),
              ),
              Padding(
                padding:  EdgeInsets.all(10.0.w),
                child: Column(
                  children: [
                    SizedBox(
                      height: 15.h,
                    ),
                    _textDesign('The buildings that \nhave been allocated...'),
                    SizedBox(height: 15.h),
                    Row(
                      children: [
                        _buildGridItem(Icons.location_on_outlined, 'Cassini',context),
                        SizedBox(
                          width: 20.w,
                        ),
                        _buildGridItem(Icons.location_on_outlined, 'Pioneer',context),
                      ],
                    )
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }

  Widget _buildGridItem(IconData iconData, String label,BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Icon(
          iconData,
        ),
        SizedBox(height: 10.h),
        InkWell(
          onTap: (){
           // Navigator.pushNamed(context, '/analysis');
          },
          child: Text(
            label,
            style:  TextStyle(
              color: Colors.black,
              fontSize: 15.sp,
              fontFamily: "Poppins",
              fontWeight: FontWeight.w400,
            ),
          ),
        ),
      ],
    );
  }

  Widget _textDesign(String text) {
    return Text(
      text,
      style:  TextStyle(
          color: const Color(0XFF003668),
          fontSize: 16.sp,
          fontFamily: "Poppins",
          fontWeight: FontWeight.w400),
    );
  }
}
