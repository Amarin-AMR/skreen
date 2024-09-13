// // ignore_for_file: use_build_context_synchronously

// import 'package:app_settings/app_settings.dart';
// import 'package:firebase_core/firebase_core.dart';
// import 'package:firebase_messaging/firebase_messaging.dart';
// import 'package:flutter/material.dart';
// import 'package:permission_handler/permission_handler.dart';
// import 'package:provider/provider.dart';
// import 'package:zillion_application/config/config.dart';
// import 'package:zillion_application/core/init/shared_preferences/shared_preferences.dart';
// import 'package:zillion_application/core/provider/global_provider.dart';
// import 'package:zillion_application/core/utility/app_alert_dialog.dart';
// import 'package:zillion_application/core/utility/formatters.dart';
// import 'package:zillion_application/config/firebase_options.dart';
// import 'package:zillion_application/main.dart';

// class AppFirebase {
//   static Future<void> ensureInitialized() async {
//     await Firebase.initializeApp(
//       options: DefaultFirebaseOptions.currentPlatform,
//     );

//     await FirebaseMessaging.instance.setAutoInitEnabled(true);

//     FirebaseMessaging messaging = FirebaseMessaging.instance;

//     NotificationSettings settings = await messaging.requestPermission(
//       alert: true,
//       announcement: false,
//       badge: false,
//       carPlay: false,
//       criticalAlert: false,
//       provisional: false,
//       sound: true,
//     );

//     await onMessageListen(settings);

//     FirebaseMessaging.onBackgroundMessage(_firebaseMessagingBackgroundHandler);

//     await FirebaseMessaging.instance.getToken().then((fcmToken) async {
//       debugPrint('FCM Token: $fcmToken');
//       await Singleton().setFcmToken(fcmToken ?? '');
//     });

//     // final apnsToken = await FirebaseMessaging.instance.getAPNSToken();
//     // if (apnsToken != null) {
//     //   // APNS token is available, make FCM plugin API requests...
//     // }

//     // await setupInteractedMessage();
//   }

//   static Future<void> onMessageListen(NotificationSettings settings) async {
//     FirebaseMessaging.onMessage.listen((RemoteMessage message) async {
//       BuildContext? context = navigatorKey.currentState?.context;
//       PermissionStatus? permissionNotificationStatus;
//       GlobalProvider? provider;
//       if (context != null) {
//         provider = context.read<GlobalProvider>();
//         provider.countNotification = provider.countNotification + 1;
//         provider.permissionNotificationStatus =
//             await Permission.notification.status;

//         permissionNotificationStatus = provider.permissionNotificationStatus;

//         if (settings.authorizationStatus == AuthorizationStatus.authorized ||
//             permissionNotificationStatus == PermissionStatus.granted) {
//         } else {
//           if (!provider.showAlertPermissionNotification) {
//             provider.showAlertPermissionNotification = true;
//             await AppAlertDialog.submit(
//               context,
//               barrierDismissible: false,
//               textSubmit: 'ตั้งค่าแอป',
//               textCancel: 'ปิด',
//               title: 'การอนุญาตการแจ้งเตือนถูกปิด',
//               subTitle:
//                   'กรุณาเปิดใช้งานการแจ้งเตือน เพื่อรับอัปเดตสถานะการดำเนินการ',
//               onPressedSubmit: () async {
//                 await AppSettings.openAppSettings(
//                   type: AppSettingsType.notification,
//                 );
//               },
//             ).then((value) {
//               provider?.showAlertPermissionNotification = false;
//             });
//           }
//         }
//       }

//       debugPrint('Message data: ${printJsonBody(message.data)}');

//       if (permissionNotificationStatus == PermissionStatus.granted) {
//         _showNotification(message);
//       }
//     });
//   }

//   @pragma('vm:entry-point')
//   static Future<void> _firebaseMessagingBackgroundHandler(
//       RemoteMessage message) async {
//     // If you're going to use other Firebase services in the background, such as Firestore,
//     // make sure you call `initializeApp` before using other Firebase services.
//     await Firebase.initializeApp();

//     _showNotification(message);
//   }

//   static Future<void> setupInteractedMessage() async {
//     // Get any messages which caused the application to open from
//     // a terminated state.
//     RemoteMessage? initialMessage =
//         await FirebaseMessaging.instance.getInitialMessage();

//     // If the message also contains a data property with a "type" of "chat",
//     // navigate to a chat screen
//     if (initialMessage != null) {
//       _handleMessage(initialMessage);
//     }

//     // Also handle any interaction when the app is in the background via a
//     // Stream listener
//     FirebaseMessaging.onMessageOpenedApp.listen(_handleMessage);
//   }

//   static void _handleMessage(RemoteMessage message) {
//     debugPrint(
//       '_handleMessage => ${printJsonBody(message.toMap())}',
//     );
//   }

//   static Future<void> deleteToken() async {
//     await FirebaseMessaging.instance.deleteToken();
//   }

//   static void _showNotification(RemoteMessage message) {
//     if (message.data['title'] != null || message.data['body'] != null) {
//       AppLocalNotificationPlugin.showNotification(message: message);
//     }
//   }
// }
