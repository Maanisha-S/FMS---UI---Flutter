import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:fms_version2/screens/analysis/ui/widget/above_card_design.dart';
import 'package:fms_version2/screens/analysis/ui/widget/below_container_design.dart';
import 'package:fms_version2/screens/route/routes.dart';
import 'package:fms_version2/widgets/appbar_design.dart';

class AnalysisPage extends StatelessWidget {
  const AnalysisPage({super.key});

  @override
  Widget build(BuildContext context) {
    ScreenUtil.init(context);
    return Scaffold(
     //extendBodyBehindAppBar: true,

      floatingActionButton: FloatingActionButton(
        onPressed: () {
          Navigator.pushNamed(context,  FmsRoutes.categoryRoute);
        },
        backgroundColor: const Color(0XFF003668),
        foregroundColor: Colors.white,
        elevation: 8.0,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(30.0),
        ),
        child: Image.asset('images/scan.png'),
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.endFloat,
      appBar: const AppBarDesign(),
      body: SingleChildScrollView(
        child: Padding(
          padding: EdgeInsets.symmetric(horizontal: 20.w),
          child: Column(
            children: [
              SizedBox(height: 10.h),
              const AboveCardDesign(),
              SizedBox(height: 15.h),
              const Hero(
                  tag: 'container',
                  child: BelowContainerDesign()),
            ],
          ),
        ),
      ),
    );
  }
}
