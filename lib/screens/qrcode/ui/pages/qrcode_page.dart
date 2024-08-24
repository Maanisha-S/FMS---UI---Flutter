import 'package:flutter/material.dart';
import 'package:fms_version2/screens/route/routes.dart';
class QrCodePage extends StatefulWidget {
  const QrCodePage({super.key});

  @override
  State<QrCodePage> createState() => _QrCodePageState();
}

class _QrCodePageState extends State<QrCodePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
         child:
           InkWell(
             onTap: (){
               Navigator.pushNamed(context, FmsRoutes.categoryServiceSwingRoute);
             },
               child: Image.asset('images/qr.png')),

      ),
    );
  }
}
