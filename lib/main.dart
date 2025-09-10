import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:webview_flutter/webview_flutter.dart';
import 'package:cpx/ad_controller.dart';   // keep controller import

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'ExoClick Ads Demo',
      home: const AdView(),   // works now
    );
  }
}



class AdView extends StatelessWidget {
  const AdView({super.key});

  @override
  Widget build(BuildContext context) {
    final controller = Get.put(AdController());

    return Scaffold(
      appBar: AppBar(title: const Text("ExoClick Banner Ad")),
      body: Center(
        child: ElevatedButton(
          onPressed: () {
            Get.dialog(
              Dialog(
                insetPadding: const EdgeInsets.all(16),
                child: SizedBox(
                  height: 300, // Banner zone fits inside
                  width: 320,
                  child: WebViewWidget(
                    controller: controller.webViewController,
                  ),
                ),
              ),
            );
          },
          child: const Text("Show Banner Ad"),
        ),
      ),
    );
  }
}
