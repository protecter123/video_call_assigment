// import 'package:firebase_messaging/firebase_messaging.dart';
// import 'package:flutter_local_notifications/flutter_local_notifications.dart';
// import 'package:get/get.dart';

// import 'package:video_call_assigment/Routes/app_pages.dart';
// import 'package:video_call_assigment/controller/call_controller.dart';
// import 'package:video_call_assigment/models/app_model.dart';

// class FCMService {
//   static final FirebaseMessaging _messaging = FirebaseMessaging.instance;
//   static final FlutterLocalNotificationsPlugin _localNotifications =
//       FlutterLocalNotificationsPlugin();

//   static Future<void> initializeFCM() async {
//     await _messaging.requestPermission();
//     FirebaseMessaging.onMessage.listen(_handleMessage);
//     FirebaseMessaging.onMessageOpenedApp.listen(_handleMessage);

//     const android = AndroidInitializationSettings('@mipmap/ic_launcher');
//     const settings = InitializationSettings(android: android);
//     await _localNotifications.initialize(
//       settings,
//       onDidReceiveNotificationResponse: (res) => _handleMessageFromPayload(res.payload),
//     );
//   }

//   static void _handleMessage(RemoteMessage message) {
//     final from = message.data['from'];
//     if (from != null) {
//       _showIncomingNotification(from);
//     }
//   }

//   static void _handleMessageFromPayload(String? payload) {
//     if (payload == 'incoming_call') {
//       final callController = Get.put(CallController());
//       callController.receiveCall(UserModel.userA);
//       Get.toNamed(Routes.incoming);
//     }
//   }

//   static Future<void> _showIncomingNotification(String from) async {
//     const androidDetails = AndroidNotificationDetails(
//       'call_channel',
//       'Call Notifications',
//       importance: Importance.max,
//       priority: Priority.high,
//       fullScreenIntent: true,
//     );

//     const notificationDetails = NotificationDetails(android: androidDetails);
//     await _localNotifications.show(
//       0,
//       'Incoming Call',
//       'Call from $from',
//       notificationDetails,
//       payload: 'incoming_call',
//     );
//   }
// }
