📊 CPX Research SDK Flutter Integration

Monetize your Flutter apps with CPX Research Surveys – a clean, production-ready integration built using GetX state management and MVVM (LayerX) architecture.

This project demonstrates how to seamlessly integrate the CPX Research SDK Flutter
 package into your apps, allowing users to participate in paid surveys and earn virtual currency, rewards, or credits in real-time.

🚀 Features

Simple Tap → Open Survey (one-click survey browser with CPX SDK)

Clean Architecture (LayerX) – Service → Controller → View separation

GetX State Management – reactive, lightweight, and scalable

Customizable Widgets – integrate Survey Cards, Overlay Widgets, or full-page surveys

Survey Rewards Handling – extendable to connect with your in-app wallet system

Cross-platform – Android & iOS ready (with proper permissions)

Logging & Debugging with CPXLogger

🏗️ Project Structure
lib/
 └── app/
     ├── service/
     │    └── survey_service.dart     # Handles SDK interactions
     ├── controller/
     │    └── survey_controller.dart # GetX logic & state
     └── view/
          └── survey_view.dart       # UI - simple tap to open surveys

📦 Installation

Add the CPX Research SDK Flutter dependency:

dependencies:
  cpx_research_sdk_flutter:
    git: 
      url: https://github.com/MakeOpinionGmbH/cpx-research-SDK-Flutter.git
      path: cpx_research_sdk_flutter


Then install packages:

flutter pub get

⚡ Usage
1. Service Class – survey_service.dart

Encapsulates SDK methods like opening surveys, fetching data, marking transactions, and enabling logs.

SurveyService().showSurveyBrowser(
  appId: "<YourAppId>",
  userId: "user_123",
  context: context,
);

2. Controller – survey_controller.dart

Handles the business logic and state using GetX.

controller.openSurvey(context);

3. View – survey_view.dart

Minimal UI layer → single button that launches CPX surveys.

ElevatedButton(
  onPressed: () => controller.openSurvey(context),
  child: const Text("Open Survey"),
),

📱 Example Flow

Launch app

Tap "Open Survey"

CPX SDK browser opens

User completes survey → You can reward them with coins/credits via your own logic

🔧 Android Setup

Add the following permissions in AndroidManifest.xml:

<uses-permission android:name="android.permission.INTERNET"/>
<uses-permission android:name="android.permission.VIBRATE"/>

🎯 Roadmap

 Base integration with CPX SDK

 Service-Controller-View clean separation

 Add wallet integration (virtual coins, in-app rewards)

 Advanced UI with Survey Cards and Notification-style Widgets

 API integration for survey rewards backend

📸 Preview

(You can add screenshots or a screen recording of survey browser here)

👨‍💻 Tech Stack

Flutter (3.x, null-safety)

GetX (state management & DI)

MVVM + LayerX Pattern

CPX Research SDK Flutter

🏢 About CPX Research

This SDK is owned by MakeOpinion GmbH.
It provides a reliable way to integrate paid surveys into apps and monetize through fun, interactive surveys.

📜 License

This project is built for educational/demo purposes.
