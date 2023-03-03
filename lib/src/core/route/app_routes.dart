import 'package:auto_route/auto_route.dart';
import 'package:web_sample_v2/src/app/home/home_page.dart';
import 'package:web_sample_v2/src/app/splash/splash_page.dart';

///Author-Pushkar Srivastava
///Date-03/03/23

class AppRoutes {
  static const splashPage = 'splashPage';
  static const homePage = 'homePage';
}

/// Splash
const splashRouter =
    AutoRoute(initial: true, path: AppRoutes.splashPage, page: SplashPage);

/// Home
const homeRouter = AutoRoute(path: AppRoutes.homePage, page: HomePage);
