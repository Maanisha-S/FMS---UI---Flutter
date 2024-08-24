import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_swipe_button/flutter_swipe_button.dart';
import 'package:fms_version2/screens/route/routes.dart';


class SwipeToSignInScreen extends StatefulWidget {
  const SwipeToSignInScreen({super.key});

  @override
  _SwipeToSignInScreenState createState() => _SwipeToSignInScreenState();
}

class _SwipeToSignInScreenState extends State<SwipeToSignInScreen> {
  bool isSwipeComplete = false;

  Future<void> _onSwipeCompleted(BuildContext context) async {
    setState(() {
      isSwipeComplete = true;
    });

    await Future.delayed(const Duration(seconds: 1));
    Navigator.pushNamed(context,FmsRoutes.loginRoute);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0XFF82bbff),
      body: Center(
        child: Column(
           // mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const SizedBox(height: 150,),
            Image.asset('images/logo1.png'),
            SizedBox(height: 50.h),
            Container(
              width: 286.w,
              height: 60.h,
              decoration: BoxDecoration(
                gradient: LinearGradient(
                  colors: [Colors.blue.shade300, Colors.blue.shade700],
                  begin: Alignment.topLeft,
                  end: Alignment.bottomRight,
                ),
                borderRadius: BorderRadius.circular(30.r),
              ),
              child: SwipeButton(
                thumb: Container(
                  decoration: BoxDecoration(
                    color: const Color(0XFF2461C2),
                    borderRadius: BorderRadius.circular(30.r),
                  ),
                  child: Center(
                    child: isSwipeComplete
                        ? Image.asset(
                      'images/tick.png',
                      width: 66.w,
                      height: 63.h,
                      fit: BoxFit.cover,
                    )
                        : Image.asset(
                      'images/slide.png',
                      width: 24.w,
                      height: 24.h,
                      fit: BoxFit.cover,
                    ),
                  ),
                ),
                height: 60.h,
                width: 286.w,
                onSwipe: () => _onSwipeCompleted(context),
                activeTrackColor: Colors.transparent,
                borderRadius: BorderRadius.circular(30.r),
                child: Center(
                  child: Text(
                    "Swipe to Sign In",
                    style: TextStyle(
                      fontFamily: 'Poppins',
                      fontWeight: FontWeight.w700,
                      color: Colors.white,
                      fontSize: 18.sp,
                    ),
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}

