import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:fms_version2/screens/route/route_manager.dart';
import 'package:fms_version2/screens/route/routes.dart';

class FmsApp extends StatelessWidget {
  const FmsApp({super.key,});

//   @override
//   Widget build(BuildContext context) {
//     return ScreenUtilInit(
//       designSize: const Size(360, 690),
//       minTextAdapt: true,
//       splitScreenMode: true,
//       builder: (_, child) {
//         return MaterialApp(
//           debugShowCheckedModeBanner: false,
//           title: 'First Method',
//           theme: ThemeData(
//             primarySwatch: Colors.blue,
//             textTheme: Typography.englishLike2018.apply(fontSizeFactor: 1.sp),
//           ),
//           routes: {
//             '/login': (context) => const LoginScreen(),
//             '/dashboard': (context) => const DashBoardPage(),
//             '/analysis': (context) => const AnalysisPage(),
//             '/category': (context) => const CategoryPage(),
//             '/checklist': (context) => const CheckListScreen(),
//             '/qrcode': (context) => const QrCodePage(),
//             '/categorySubpage': (context) => const CategorySubPage(),
//             '/employeeDetails': (context) => const EmployeeDetails(),
//             '/success': (context) => const SuccessPage(),
//           },
//           home: const SwipeToSignInScreen(),
//         );
//       },
//     );
//   }
// }
  @override
  Widget build(BuildContext context) {
    return ScreenUtilInit(
      designSize: const Size(393, 852),
      minTextAdapt: true,
      splitScreenMode: true,
      builder: (_, child) {
        return MaterialApp(
          debugShowCheckedModeBanner: false,
          title: 'My Flutter App',
          theme: ThemeData(
            primarySwatch: Colors.blue,
           // textTheme: Typography.englishLike2018.apply(fontSizeFactor: 1.sp),
          ),
          initialRoute: FmsRoutes.splashRoute,
          onGenerateRoute: RouteManager.generateRoute,
        );
      },
    );
  }
}