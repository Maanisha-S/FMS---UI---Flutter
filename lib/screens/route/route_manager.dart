import 'package:flutter/material.dart';
import 'package:fms_version2/screens/analysis/ui/page/analysis_page.dart';
import 'package:fms_version2/screens/camera/ui/pages/camera_page.dart';
import 'package:fms_version2/screens/category/ui/category_page.dart';
import 'package:fms_version2/screens/category_subpage/ui/pages/category_subpage.dart';
import 'package:fms_version2/screens/check_list/ui/pages/check_list_page.dart';
import 'package:fms_version2/screens/dashboard/ui/pages/dashboard_page.dart';
import 'package:fms_version2/screens/employee_details/ui/employee_details.dart';
import 'package:fms_version2/screens/login/ui/pages/login_screen.dart';
import 'package:fms_version2/screens/qrcode/ui/pages/qrcode_page.dart';
import 'package:fms_version2/screens/route/routes.dart';
import 'package:fms_version2/screens/splash_screen/ui/splash_screen.dart';
import 'package:fms_version2/screens/success/ui/success_page.dart';



class InstantPageRoute<T> extends PageRouteBuilder<T> {
  final Widget page;

  InstantPageRoute({required this.page})
      : super(
    pageBuilder: (context, animation, secondaryAnimation) => page,
    transitionDuration: Duration.zero,
    reverseTransitionDuration: Duration.zero,
    transitionsBuilder: (context, animation, secondaryAnimation, child) {
      return child;
    },
  );
}

class RouteManager {
  static Route<dynamic> generateRoute(RouteSettings settings) {
    switch (settings.name) {
      case FmsRoutes.splashRoute:
        return InstantPageRoute(page: const SwipeToSignInScreen());
      case FmsRoutes.loginRoute:
        return InstantPageRoute(page: const LoginScreen());
      case FmsRoutes.dashboardRoute:
        return InstantPageRoute(page: const DashBoardPage());
      case FmsRoutes.analysisRoute:
        return InstantPageRoute(page: const AnalysisPage());
      case FmsRoutes.categoryRoute:
        return InstantPageRoute(page: const CategoryPage());
      case FmsRoutes.qrCodeRoute:
        return InstantPageRoute(page: const QrCodePage());
      case FmsRoutes.categoryServiceSwingRoute:
        return InstantPageRoute(page: const CategorySubPage());
      case FmsRoutes.checkDetailsRoute:
        return InstantPageRoute(page: const EmployeeDetails());
      case FmsRoutes.checklistRoute:
        return InstantPageRoute(page: const CheckListScreen());
      case FmsRoutes.cameraPageRoute:
        return InstantPageRoute(page: const CameraPage());
      case FmsRoutes.successPageRoute:
        return InstantPageRoute(page: const SuccessPage());
      default:
        return MaterialPageRoute(
          builder: (context) => Scaffold(
            appBar: AppBar(title: const Text('Unknown Route')),
            body: Center(
              child: Text('No route defined for ${settings.name}'),
            ),
          ),
        );
    }
  }
}
