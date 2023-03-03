import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:web_sample_v2/src/core/route/router.dart';
import 'package:web_sample_v2/src/core/route/router.gr.dart';

///Author-Pushkar Srivastava
///Date-03/03/23

class WebApplication extends StatelessWidget {
  WebApplication({Key? key}) : super(key: key);

  // This widget is the root of your application.

  final _appRouter = AppRouter();

  @override
  Widget build(BuildContext context) {
    return MaterialApp.router(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        pageTransitionsTheme: const PageTransitionsTheme(
          builders: {
            TargetPlatform.android: CupertinoPageTransitionsBuilder(),
            TargetPlatform.iOS: CupertinoPageTransitionsBuilder(),
          },
        ),
      ),
      routerDelegate: AutoRouterDelegate(
        _appRouter,
        navigatorObservers: () => [
          AppRouteObserver(),
        ],
      ),
      routeInformationProvider: _appRouter.routeInfoProvider(),
      routeInformationParser: _appRouter.defaultRouteParser(),
    );
  }
}
