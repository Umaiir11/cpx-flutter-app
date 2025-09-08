import 'package:cpx_research_sdk_flutter/cpx.dart';

class SurveyService {
  /// Show survey browser
  void showSurveyBrowser({required String appId, required String userId, required context}) {
    showCPXBrowserDialog(
      context: context,
      config: CPXConfig(appID: appId, userID: userId),
    );
  }

  /// Fetch surveys & transactions (listener based)
  void fetchSurveysAndTransactions() {
    fetchCPXSurveysAndTransactions();
  }

  /// Mark transaction as paid
  void markAsPaid(String transactionId, String messageId) {
    markTransactionAsPaid(transactionId, messageId);
  }

  /// Logging
  void enableLogger(bool enable) {
    CPXLogger.enableLogger(enable);
  }
}
