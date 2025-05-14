# video_call_assigment

# Video Call Application

A modern Flutter video calling application using Agora SDK with a beautiful UI and real-time communication features.

## Features

- 🎥 Real-time video calling
- 🎨 Modern UI with animations
- 👥 Recent calls history
- 📞 Contact management
- 🔔 Push notifications for incoming calls
- 🎵 Background audio support
- 📱 Camera switching functionality
- 🎤 Mute/Unmute controls

## Screenshots

[Add your app screenshots here]

## Setup Instructions

### Prerequisites

- Flutter SDK
- Agora Developer Account
- Firebase Project (for notifications)
- Android Studio / Xcode

### Agora Setup

1. Create an account on [Agora.io](https://www.agora.io/)
2. Create a new project in Agora Console
3. Copy your App ID and temp token
4. Update `constants.dart`:

```dart
const appId = "YOUR_AGORA_APP_ID";
const token = "YOUR_TEMP_TOKEN";
const channel = "YOUR_CHANNEL_NAME";
```

### Firebase Setup

1. Create a new Firebase project
2. Add Android/iOS apps in Firebase console
3. Download and add configuration files:
   - `google-services.json` for Android
   - `GoogleService-Info.plist` for iOS

### Local Setup

1. Clone the repository:
```bash
git clone https://github.com/yourusername/video_call_app.git
```

2. Install dependencies:
```bash
flutter pub get
```

3. Run the app:
```bash
flutter run
```

## Project Structure

```
lib/
├── constants/
│   └── constants.dart
├── screens/
│   ├── home_screen.dart
│   ├── call_view.dart
│   └── splash_screen.dart
├── services/
│   ├── agora_service.dart
│   └── fcm_service.dart
└── main.dart
```

## Required Permissions

### Android
Add these permissions to your `AndroidManifest.xml`:

```xml
<uses-permission android:name="android.permission.INTERNET"/>
<uses-permission android:name="android.permission.CAMERA"/>
<uses-permission android:name="android.permission.RECORD_AUDIO"/>
<uses-permission android:name="android.permission.MODIFY_AUDIO_SETTINGS"/>
<uses-permission android:name="android.permission.ACCESS_NETWORK_STATE"/>
<uses-permission android:name="android.permission.BLUETOOTH"/>
<uses-permission android:name="android.permission.ACCESS_WIFI_STATE"/>
<uses-permission android:name="android.permission.READ_EXTERNAL_STORAGE"/>
<uses-permission android:name="android.permission.WAKE_LOCK"/>
```

### iOS
Add these permissions to your `Info.plist`:

```xml
<key>NSCameraUsageDescription</key>
<string>This app needs camera access for video calls</string>
<key>NSMicrophoneUsageDescription</key>
<string>This app needs microphone access for video calls</string>
<key>NSBluetoothPeripheralUsageDescription</key>
<string>This app needs bluetooth access for audio devices</string>
```

## UI Features

- Animated call button with pulse effect
- Gradient backgrounds
- Custom app bar with flexible space
- Recent calls list with user avatars
- Bottom navigation bar with icons
- Call controls with animated feedback
- Loading animations for video connection
- Animated borders for active speaker
- Floating action button with scale animation

## Dependencies

```yaml
dependencies:
  flutter:
    sdk: flutter
  agora_rtc_engine: ^latest_version
  permission_handler: ^latest_version
  firebase_core: ^latest_version
  firebase_messaging: ^latest_version
  get: ^latest_version
```

## Configuration

1. Update the Agora credentials in `constants.dart`
2. Configure Firebase using your `google-services.json` and `GoogleService-Info.plist`
3. Update the bundle ID/package name in respective platform folders

## Contributing

1. Fork the repository
2. Create your feature branch (`git checkout -b feature/AmazingFeature`)
3. Commit your changes (`git commit -m 'Add some AmazingFeature'`)
4. Push to the branch (`git push origin feature/AmazingFeature`)
5. Open a Pull Request


## Acknowledgments

- Agora.io for the video SDK
- Firebase for notification services
- Flutter team for the amazing framework

