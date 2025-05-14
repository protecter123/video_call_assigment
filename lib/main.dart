import 'package:firebase_messaging/firebase_messaging.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import 'package:firebase_core/firebase_core.dart';
import 'package:permission_handler/permission_handler.dart';

import 'package:video_call_assigment/Routes/app_pages.dart';
import 'package:video_call_assigment/firebase_options.dart';
import 'package:video_call_assigment/screens/call_view.dart';
import 'package:video_call_assigment/screens/splash_screen.dart';
import 'package:video_call_assigment/services/fcm_service.dart';
Future<void> requestPermissions() async {
  await [
    Permission.camera,
    Permission.microphone,
    Permission.notification,
    Permission.bluetooth,
  ].request();
}

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp(
    options: DefaultFirebaseOptions.currentPlatform,
  );
 
  // Set the background message handler
  //FirebaseMessaging.onBackgroundMessage(firebaseMessagingBackgroundHandler);
   await requestPermissions();
  // Initialize your FCM service
  //await FCMService.initializeFCM();
  
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    // return GetMaterialApp(
    //   title: 'Flutter Video Call',
    //   debugShowCheckedModeBanner: false,
    //   initialRoute: AppPages.initial,
    //   getPages: AppPages.routes,
    //   theme: ThemeData.dark(),
    // );
    
      return MaterialApp(
        debugShowCheckedModeBanner: false,  // Added this line
      title: 'Agora',
      theme: ThemeData(

        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      home: const SplashScreen(),
    ); 
  }
}
