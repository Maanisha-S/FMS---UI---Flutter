import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class SecondContainerDesign extends StatelessWidget {
  final String text;
  final String image;
  final void Function() onTap;
  const SecondContainerDesign(
      {super.key,
      required this.text,
      required this.image,
      required this.onTap});

  @override
  Widget build(BuildContext context) {
    ScreenUtil.init(context);
    return InkWell(
      onTap: onTap,
      child: Container(
        width: 530.w,
        height: 70.h,
        decoration: BoxDecoration(
          borderRadius: const BorderRadius.only(
              topRight: Radius.circular(25),
              topLeft: Radius.circular(25),
              bottomRight: Radius.circular(0),
              bottomLeft: Radius.circular(25)),
          image: DecorationImage(
            image: AssetImage(image),
            fit: BoxFit.cover,
          ),
          color: Colors.black.withOpacity(0.5),
          // backgroundBlendMode: BlendMode.darken,
        ),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Padding(
              padding: const EdgeInsets.only(left: 130.0),
              child: _textDesign(text),
            ),
            Icon(Icons.chevron_right, size: 40.sp, color: Colors.white),
          ],
        ),
      ),
    );
  }

  Widget _textDesign(String text) {
    return Text(
      text,
      style: const TextStyle(
          color: Colors.white,
          fontSize: 24,
          fontFamily: "Poppins",
          fontWeight: FontWeight.w800),
    );
  }
}
