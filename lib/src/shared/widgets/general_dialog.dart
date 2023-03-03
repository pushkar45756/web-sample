import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:web_sample_v2/src/core/values/app_colors.dart';
import 'package:web_sample_v2/src/core/values/app_strings.dart';
import 'package:web_sample_v2/src/shared/styles/text_styles.dart';

///Author-Pushkar Srivastava
///Date-03/03/23

showAppGeneralDialog(
  BuildContext context,
) {
  var size = MediaQuery.of(context).size;

  showDialog(
      context: context,
      builder: (context) {
        return AlertDialog(
          title: Align(
            alignment: Alignment.center,
            child: Text(
              AppStrings.urlChangedTitle,
              style: regularStyle(
                fontSize: size.width * 0.05,
                fontColor: AppColors.colorBlack,
              ),
            ),
          ),
          content: SizedBox(
            width: size.width * .8,
            height: size.height * .3,
            child: Column(
              children: [
                Image.asset('assets/images/refresh_icon.png'),
                SizedBox(height: size.height * 0.05),
                Text(
                  AppStrings.urlChangedDesc,
                  style: regularStyle(fontColor: AppColors.colorBlack),
                )
              ],
            ),
          ),
        );
      });
  Future.delayed(const Duration(seconds: 2), () {
    context.router.pop();
  });
}
