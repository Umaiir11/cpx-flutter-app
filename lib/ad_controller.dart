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
    </head>
    <body style="margin:0;padding:0;overflow:hidden;">
      <script async type="application/javascript" src="https://a.magsrv.com/ad-provider.js"></script>
      <ins class="eas6a97888e10" data-zoneid="5720054"></ins>
      <script>
        (AdProvider = window.AdProvider || []).push({"serve": {}});
      </script>
    </body>
    </html>
    ''';

    webViewController = WebViewController()
      ..setJavaScriptMode(JavaScriptMode.unrestricted)
      ..loadHtmlString(adHtml);
  }
}
