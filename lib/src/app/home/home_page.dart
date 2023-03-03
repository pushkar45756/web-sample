import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter_webview_pro/webview_flutter.dart';
import 'package:web_sample_v2/src/shared/network/api_end_points.dart';
import 'package:web_sample_v2/src/shared/styles/text_styles.dart';

import '../../shared/widgets/general_dialog.dart';

///Author-Pushkar Srivastava
///Date-03/03/23

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  var url = '';

  @override
  void initState() {
    url = ApiEndPoints.urlA;
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    print("'''''''''$url");
    return SafeArea(
      child: Scaffold(
          appBar: AppBar(
            actions: [
              InkWell(
                onDoubleTap: () {
                  url = url == ApiEndPoints.urlA
                      ? ApiEndPoints.urlB
                      : ApiEndPoints.urlA;
                  print('url after: $url');
                  setState(() {});
                  showAppGeneralDialog(context);
                },
                child: const Padding(
                  padding: EdgeInsets.all(16.0),
                  child: Icon(
                    Icons.swap_horiz_outlined,
                  ),
                ),
              ),
            ],
            centerTitle: true,
            title: Text(
              "Home Page",
              style: regularStyle(),
            ),
          ),
          body: WebView(
            key: UniqueKey(),
            debuggingEnabled: true,
            initialUrl: url,
            javascriptMode: JavascriptMode.unrestricted,
          )
          // Center(
          //     child: WebViewWidget(
          //   controller: ctrl,
          // )),
          ),
    );
  }
}
