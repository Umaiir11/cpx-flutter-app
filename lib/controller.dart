import 'package:cpx/service.dart';
import 'package:get/get.dart';
import 'package:flutter/material.dart';

class SurveyController extends GetxController {
  final SurveyService _surveyService = SurveyService();

  final String appId = "28948";   // 🔹 Replace with actual ID
  final String userId = "user_123";     // 🔹 Replace with dynamic user ID

  var isLoading = false.obs;

  void openSurvey(BuildContext context) {
    isLoading.value = true;
    _surveyService.showSurveyBrowser(
      appId: appId,
      userId: userId,
      context: context,
    );
    isLoading.value = false;
  }

  void enableLogs() {
    _surveyService.enableLogger(true);
  }
}
