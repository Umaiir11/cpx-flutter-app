import 'package:cpx/ad_controller.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:webview_flutter/webview_flutter.dart';

class AdView extends StatelessWidget {
  const AdView({super.key});

  @override
  Widget build(BuildContext context) {
    final controller = Get.put(AdController());

    return Scaffold(
      appBar: AppBar(title: const Text("ExoClick Ads")),
      body: Center(
        child: ElevatedButton(
          onPressed: () {
            // Show ad in popup dialog
            Get.dialog(
              Dialog(
                insetPadding: const EdgeInsets.all(16),
                child: SizedBox(
                  height: 400,
                  width: 300,
                  child: WebViewWidget(controller: controller.webViewController),
                ),
              ),
            );
          },
          child: const Text("Show Ad"),
        ),
      ),
    );
  }
}
