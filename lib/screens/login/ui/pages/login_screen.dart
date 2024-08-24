import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:fms_version2/screens/login/ui/widget/login_textform_field.dart';
import 'package:fms_version2/screens/route/routes.dart';
import 'package:fms_version2/widgets/material_button_design.dart';


class LoginScreen extends StatefulWidget {
  const LoginScreen({super.key});

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  final TextEditingController emailController = TextEditingController();
  final TextEditingController passwordController = TextEditingController();
  final GlobalKey<FormState> _formKey = GlobalKey<FormState>();
  bool _isObscured = true;
  bool _isChecked = false;
  String? emailErrorMessage;
  String? passwordErrorMessage;

  void _validateForm() {
    setState(() {
      emailErrorMessage = emailController.text.isEmpty
          ? 'Please enter your email address'
          : null;
      passwordErrorMessage = passwordController.text.isEmpty
          ? 'Please enter your password'
          : null;
    });
  }


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Padding(
          padding: EdgeInsets.all(30.0.w),
          child: Form(
            key: _formKey,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Center(child: Image.asset('images/login_img.png')),
                SizedBox(
                  height: 40.h,
                ),
                Text(
                  'Email Address',
                  style: TextStyle(
                    fontFamily: 'Poppins',
                    fontSize: 18.sp,
                    color: Colors.black,
                  ),
                ),
                SizedBox(height: 17.h),
                LoginTextForm(
                  controller: emailController,
                  hintText: 'Enter your Email Address',
                  keyboardType: TextInputType.emailAddress,
                ),
                if (emailErrorMessage != null) ...[
                  SizedBox(height: 10.h),
                  Container(
                    height: 43.h,
                    alignment: Alignment.center,
                    decoration: BoxDecoration(
                      color: Colors.red,
                      border: Border.all(
                        color: Colors.white,
                        width: 2.0.w,
                      ),
                      borderRadius: BorderRadius.circular(7.0),
                    ),
                    child: Text(
                      emailErrorMessage!,
                      style: TextStyle(
                        fontFamily: 'Poppins',
                        fontSize: 14.sp,
                        fontWeight: FontWeight.w500,
                        color: Colors.white,
                      ),
                    ),
                  ),
                ],
                SizedBox(height: 20.h),
                Text(
                  'Password',
                  style: TextStyle(
                    fontFamily: 'Poppins',
                    fontSize: 18.sp,
                    fontWeight: FontWeight.w400,
                    color: Colors.black,
                  ),
                ),
                SizedBox(height: 17.h),
                LoginTextForm(
                  controller: passwordController,
                  hintText: 'Enter your password',
                  obscureText: _isObscured,
                  suffixIcon: IconButton(
                    icon: Icon(
                      _isObscured ? Icons.visibility_off : Icons.visibility,
                    ),
                    onPressed: () {
                      setState(() {
                        debugPrint('print');
                        _isObscured = !_isObscured;
                      });
                    },
                  ),
                ),
                if (passwordErrorMessage != null) ...[
                  SizedBox(height: 10.h),
                  Container(
                    height: 43.h,
                    alignment: Alignment.center,
                    decoration: BoxDecoration(
                      color: Colors.red,
                      border: Border.all(
                        color: Colors.white,
                        width: 2.0.w,
                      ),
                      borderRadius: BorderRadius.circular(7.0),
                    ),
                    child: Text(
                      passwordErrorMessage!,
                      style: TextStyle(
                        fontFamily: 'Poppins',
                        fontSize: 14.sp,
                        fontWeight: FontWeight.w500,
                        color: Colors.white,
                      ),
                    ),
                  ),
                ],
                SizedBox(
                  height: 5.h,
                ),
                Row(
                  children: [
                    Checkbox(
                      activeColor:const Color(0xFF0060FF),
                      checkColor: Colors.white,
                      value: _isChecked,
                      onChanged: (bool? value) {
                        setState(() {
                          _isChecked = value ?? false;
                        });
                      },
                    ),
                    Text(
                      'Remember me',
                      style: TextStyle(
                        fontFamily: 'Poppins',
                        fontSize: 16.sp,
                        color: Colors.black,
                        fontWeight: FontWeight.w500,
                      ),
                    ),
                  ],
                ),
                SizedBox(height: 20.h),
                Center(
                  child: MaterialButtonDesign(
                    height: 53.h,
                    width: 214.w,
                    text: 'LOG IN',
                    onTap: () {
                      if(emailController.text.isNotEmpty && passwordController.text.isNotEmpty && _isChecked == true){
                        Navigator.pushNamed(context,FmsRoutes.dashboardRoute);
                      }
                      else{
                        _validateForm();
                      }


                    },
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
