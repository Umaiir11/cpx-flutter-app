import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:webview_flutter/webview_flutter.dart';

class AdController extends GetxController {
  late final WebViewController webViewController;

  @override
  void onInit() {
    super.onInit();

    const String adHtml = '''
    <!DOCTYPE html>
    <html>
    <head>
      <meta name="viewport" content="width=device-width, initial-scale=1.0">
      <style>
        body { margin:0; padding:0; overflow:hidden; }
      </style>
    </head>
    <body>
      <script async type="application/javascript" src="https://a.pemsrv.com/ad-provider.js"></script>
      <ins class="eas6a97888e33" data-zoneid="5712106"></ins>
      <script>
        (AdProvider = window.AdProvider || []).push({"serve": {}});
      </script>
    </body>
    </html>
    ''';

    webViewController = WebViewController()
      ..setJavaScriptMode(JavaScriptMode.unrestricted)
      ..setBackgroundColor(const Color(0x00000000))
      ..loadHtmlString(adHtml);
  }
}
