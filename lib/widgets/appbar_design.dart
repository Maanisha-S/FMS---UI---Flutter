import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class AppBarDesign extends StatelessWidget implements PreferredSizeWidget {

  const AppBarDesign({super.key,});

  @override
  Widget build(BuildContext context) {
    return
      Padding(
        padding:  EdgeInsets.symmetric(vertical: 10.w,horizontal: 10.h),
        child: AppBar(
          backgroundColor: Colors.transparent,
          elevation: 0,
          leading: IconButton(
            icon: const Icon(Icons.arrow_back_ios_new,color: Colors.black,),
            onPressed: () {
              Navigator.pop(context);
            },
          ),
          title: Text(
            'Cassini',
            style: TextStyle(
                fontSize: 24.sp,
                color: Colors.black,
                fontWeight: FontWeight.w400,
                fontFamily: "Poppins"),
          ),
          centerTitle: true,
        ),
      );
  }

  @override
  Size get preferredSize => const Size.fromHeight(70);
}
