import 'package:flutter/material.dart';
import 'package:webview_flutter/webview_flutter.dart';
import 'package:flutter_credit_card/constants.dart';
import 'package:webview_flutter_android/webview_flutter_android.dart';

class pdfview extends StatelessWidget {
  const pdfview({super.key});

  @override
  Widget build(BuildContext context) {
    WebViewController controller;
    controller = WebViewController()
      ..setJavaScriptMode(JavaScriptMode.unrestricted)
      ..setBackgroundColor(const Color(0x00000000))
      ..setNavigationDelegate(
        NavigationDelegate(
          onProgress: (int progress) {
            // Update loading bar.
          },
          onPageStarted: (String url) {},
          onPageFinished: (String url) {},
          onWebResourceError: (WebResourceError error) {},
          onNavigationRequest: (NavigationRequest request) {
            if (request.url.startsWith('https://www.geeksforgeeks.org/')) {
              return NavigationDecision.prevent;
            }
            return NavigationDecision.navigate;
          },
        ),
      )
      ..loadRequest(Uri.parse('https://www.geeksforgeeks.org/'));
    return Scaffold(
        body: Stack(
      children: <Widget>[
        Padding(
          padding: const EdgeInsets.only(top: 30),
          child: Container(
            child: WebViewWidget(controller: controller),
          ),
        ),
        new Positioned(
          top: 0.0,
          left: 0.0,
          right: 0.0,
          child: AppBar(
            title: Align(
              alignment: Alignment.center,
              child: Text('Document'),
            ),
            backgroundColor: Color.fromARGB(255, 123, 27, 27),
            actions: [
              Padding(
                padding: const EdgeInsets.only(right: 10),
                child: IconButton(onPressed: () {}, icon: Icon(Icons.settings)),
              )
            ],
          ),
        ),
      ],
    ));
  }
}
