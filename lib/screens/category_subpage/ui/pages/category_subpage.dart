import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:fms_version2/screens/route/routes.dart';
import 'package:fms_version2/widgets/appbar_design.dart';

class CategorySubPage extends StatefulWidget {
  const CategorySubPage({super.key});

  @override
  State<CategorySubPage> createState() => _CategorySubPageState();
}

class _CategorySubPageState extends State<CategorySubPage> {
  @override
  Widget build(BuildContext context) {
    ScreenUtil.init(context);
    return Scaffold(
      appBar: const AppBarDesign(),
      body: SingleChildScrollView(
        child: Padding(
          padding: EdgeInsets.symmetric(horizontal: 15.w, vertical: 5.h),
          child: Column(
            children: [
              SizedBox(height: 20.h),
              const Hero(
                tag:'profile',
                child: Center(
                  child: CircleAvatar(
                    foregroundColor: Colors.blue,
                    radius: 60,
                    backgroundImage: AssetImage('images/daprofile.png'),
                  ),
                ),
              ),
              Hero(
                tag: 'animation',
                child: Text(
                  'DA Restroom',
                  style: TextStyle(
                    fontSize: 22.sp,
                    fontFamily: 'Poppins',
                    color: Colors.black,
                    fontWeight: FontWeight.w400,
                  ),
                ),
              ),
              SizedBox(height: 10.h),
              buildCard(
                  title: 'DA Restroom 01',
                  startTime: '01-02-2024 , 08:00 AM',
                  endTime: '01-02-2024 , 10:00 AM',
                  onTap: () {
                    Navigator.pushNamed(context, FmsRoutes.checkDetailsRoute);
                  }),
              SizedBox(height: 20.h),
              buildCard(
                  title: 'DA Restroom 02',
                  startTime: '01-02-2024 , 10:00 AM',
                  endTime: '01-02-2024 , 12:00 PM',
                  onTap: () {}),
              SizedBox(height: 20.h),
              buildCard(
                  title: 'DA Restroom 03',
                  startTime: '01-02-2024 , 12:00 PM',
                  endTime: '01-02-2024 , 02:00 PM',
                  onTap: () {}),
              SizedBox(height: 20.h),
              buildCard(
                  title: 'DA Restroom 04',
                  startTime: '01-02-2024 , 12:00 PM',
                  endTime: '01-02-2024 , 02:00 PM',
                  onTap: () {}),
            ],
          ),
        ),
      ),
    );
  }
}

Widget buildCard(
    {required String title,
    required String startTime,
    required String endTime,
    required VoidCallback onTap}) {
  return Card(
    elevation: 10,
    color: const Color(0xFF1E86FF),
    shape: RoundedRectangleBorder(
      borderRadius: BorderRadius.circular(15),
    ),
    child: InkWell(
      onTap: onTap,
      child: Column(
        children: <Widget>[
          Container(
            decoration: const BoxDecoration(
              color: Color(0XFF003668),
              borderRadius: BorderRadius.only(
                topRight: Radius.circular(15),
                topLeft: Radius.circular(15),
                bottomLeft: Radius.circular(0),
                bottomRight: Radius.circular(0),
              ),
            ),
            width: 340.w,
            height: 60.h,
            padding: EdgeInsets.symmetric(horizontal: 12.w),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: <Widget>[
                Text(
                  title,
                  style: TextStyle(
                      fontSize: 20.sp,
                      fontFamily: 'Poppins',
                      color: Colors.white,
                      fontWeight: FontWeight.w400),
                ),
                const Spacer(),
                Image.asset('images/rightarrow.png'),
              ],
            ),
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              Expanded(
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: <Widget>[
                    Text(
                      'Start at:',
                      style: TextStyle(
                          fontFamily: 'Poppins',
                          fontSize: 11.sp,
                          color: Colors.white,
                          fontWeight: FontWeight.w400),
                    ),
                    SizedBox(height: 3.h),
                    Text(
                      startTime,
                      style: TextStyle(
                          fontFamily: 'Poppins',
                          fontSize: 12.sp,
                          color: Colors.white,
                          fontWeight: FontWeight.w500),
                    ),
                  ],
                ),
              ),
              Expanded(
                child: ClipPath(
                  clipper: CornerTriangleClipper(),
                  child: Container(
                    height: 50.h,
                    decoration: const BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.only(
                        bottomRight: Radius.circular(10),
                      ),
                    ),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: <Widget>[
                        Text(
                          'End at:',
                          style: TextStyle(
                              fontFamily: 'Poppins',
                              fontSize: 11.sp,
                              color: const Color(0XFF003668),
                              fontWeight: FontWeight.w400),
                        ),
                        SizedBox(height: 3.h),
                        Text(
                          endTime,
                          style: TextStyle(
                              fontFamily: 'Poppins',
                              fontSize: 12.sp,
                              color: const Color(0XFF003668),
                              fontWeight: FontWeight.w500),
                        ),
                      ],
                    ),
                  ),
                ),
              ),
            ],
          ),
        ],
      ),
    ),
  );
}

class CornerTriangleClipper extends CustomClipper<Path> {
  @override
  Path getClip(Size size) {
    final Path path = Path();
    path.lineTo(0, 0);
    path.lineTo(size.width, 0);
    path.lineTo(size.width, size.height);
    path.lineTo(0, size.height);
    path.lineTo(20, 20);
    path.lineTo(20, 40);
    path.close();
    return path;
  }

  @override
  bool shouldReclip(CustomClipper<Path> oldClipper) => false;
}
