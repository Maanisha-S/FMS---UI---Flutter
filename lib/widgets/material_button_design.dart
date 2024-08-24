import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class MaterialButtonDesign extends StatelessWidget {
  final double height;
  final double width;
  final String text;
  final double? size;
  final List<Color>? gradientColors; // Change the type to List<Color> for gradient
  final bool? loading;
  final void Function() onTap;

  const MaterialButtonDesign({
    Key? key,
    this.gradientColors,
    this.size,
    required this.height,
    required this.width,
    required this.text,
    required this.onTap,
    this.loading,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return loading ?? false
        ? const Center(child: CircularProgressIndicator())
        :
    DecoratedBox(
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(15.0),
        gradient: LinearGradient(
          begin: Alignment.centerLeft,
          end: Alignment.centerRight,
          colors: gradientColors ?? [const Color(0xFF0060FF), const Color(0xFF000C1F)], // Correctly assign default gradient colors
        ),
      ),
      child: MaterialButton(
        onPressed: onTap,
        height: height,
        minWidth: width,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(15.0),
        ),
        child: Text(
          text,
          textAlign: TextAlign.center,
          style: TextStyle(
            fontFamily: 'Roboto',
            fontWeight: FontWeight.w600,
            fontSize: size != null ? ScreenUtil().setSp(size!) : 18.0.sp,
            color: Colors.white,
          ),
        ),
      ),
    );
  }
}
