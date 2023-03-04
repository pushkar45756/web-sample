import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:web_sample_v2/src/core/route/router.gr.dart';
import 'package:web_sample_v2/src/core/values/app_assets.dart';

///Author-Pushkar Srivastava
///Date-03/03/23

class SplashPage extends StatefulWidget {
  const SplashPage({Key? key}) : super(key: key);

  @override
  State<SplashPage> createState() => _SplashPageState();
}

class _SplashPageState extends State<SplashPage> {
  @override
  void initState() {
    navigateToNext();
    super.initState();
  }

  navigateToNext() {
    Future.delayed(const Duration(seconds: 3), () {
      context.router.replace(const HomeRoute());
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Image.asset(AppAssets.splashIcon),
          ],
        ),
      ),
    );
  }
}
