import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter_inappwebview/flutter_inappwebview.dart';
import 'package:web_sample_v2/src/shared/network/api_end_points.dart';
import 'package:web_sample_v2/src/shared/styles/text_styles.dart';

import '../../core/values/app_strings.dart';

///Author-Pushkar Srivastava
///Date-03/03/23

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  var url = '';
  final GlobalKey webViewKey = GlobalKey();

  @override
  void initState() {
    url = ApiEndPoints.urlA;
    super.initState();
  }

  InAppWebViewController? webViewController;

  @override
  Widget build(BuildContext context) {
    print("'''''''''$url");
    return SafeArea(
      child: Scaffold(
          appBar: AppBar(
            // backgroundColor: Colors.transparent.withOpacity(0.5),

            // backgroundColor: Colors.transparent,
            // actions: [
            //   InkWell(
            //     onDoubleTap: () {
            //       url = url == ApiEndPoints.urlA
            //           ? ApiEndPoints.urlB
            //           : ApiEndPoints.urlA;
            //       print('url after: $url');
            //       setState(() {});
            //       showAppGeneralDialog(context);
            //     },
            //     child: const Padding(
            //       padding: EdgeInsets.all(16.0),
            //       child: Icon(
            //         Icons.swap_horiz_outlined,
            //       ),
            //     ),
            //   ),
            // ],
            centerTitle: true,
            title: Text(
              AppStrings.homePage,
              style: regularStyle(),
            ),
          ),
          body: InAppWebView(
              key: webViewKey,
              initialUrlRequest: URLRequest(url: Uri.tryParse(url)),
              onWebViewCreated: (controller) {
                webViewController = controller;
              })
          // Center(
          //     child: WebViewWidget(
          //   controller: ctrl,
          // )),
          ),
    );
  }
}
