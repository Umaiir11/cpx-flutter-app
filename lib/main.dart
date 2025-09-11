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
      appBar: AppBar(title: const Text("Interstitial Ad Test")),
      body: Center(
        child: ElevatedButton(
          onPressed: () {
            Get.dialog(
              Dialog(
                insetPadding: EdgeInsets.zero,
                backgroundColor: Colors.black,
                child: SizedBox.expand(
                  child: Stack(
                    children: [
                      WebViewWidget(controller: controller.webViewController),
                      Positioned(
                        top: 40,
                        right: 20,
                        child: IconButton(
                          icon: const Icon(Icons.close, color: Colors.white, size: 28),
                          onPressed: () => Get.back(),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
              barrierDismissible: false,
            );
          },
          child: const Text("Show Interstitial Ad"),
        ),
      ),
    );
  }
}
