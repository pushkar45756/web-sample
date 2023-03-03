import 'package:auto_route/auto_route.dart';
import 'package:web_sample_v2/src/core/route/app_routes.dart';

///Author-Pushkar Srivastava
///Date-03/03/23

class AppRouteObserver extends AutoRouterObserver {}

@MaterialAutoRouter(
  replaceInRouteName: 'Page,Route',
  routes: <AutoRoute>[
    /// Splash
    splashRouter,

    /// Auth
    homeRouter
  ],
)
class $AppRouter {}
