import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'controller.dart';

class SurveyView extends StatelessWidget {
  final SurveyController controller = Get.put(SurveyController());

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text("CPX Research Demo")),
      body: Center(
        child: Obx(() {
          if (controller.isLoading.value) {
            return const CircularProgressIndicator();
          }
          return ElevatedButton(
            onPressed: () => controller.openSurvey(context),
            child: const Text("Open Survey"),
          );
        }),
      ),
    );
  }
}
