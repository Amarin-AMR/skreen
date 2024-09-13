// import 'package:firebase_messaging/firebase_messaging.dart';
// import 'package:flutter_local_notifications/flutter_local_notifications.dart';
// import 'package:provider/provider.dart';
// import 'package:zillion_application/core/init/navigation/navigation.dart';
// import 'package:zillion_application/core/provider/global_provider.dart';
// import 'package:zillion_application/core/utility/formatters.dart';
// import 'package:zillion_application/main.dart';

// final FlutterLocalNotificationsPlugin flutterLocalNotificationsPlugin =
//     FlutterLocalNotificationsPlugin();

// class AppLocalNotificationPlugin {
//   static Future<void> ensureInitialized() async {
//     const AndroidInitializationSettings androidInitializationSettings =
//         AndroidInitializationSettings('@mipmap/ic_launcher');

//     DarwinInitializationSettings initializationSettingsIOS =
//         const DarwinInitializationSettings(
//       requestSoundPermission: false,
//       requestBadgePermission: false,
//       requestAlertPermission: false,
//     );

//     InitializationSettings initializationSettings = InitializationSettings(
//       android: androidInitializationSettings,
//       iOS: initializationSettingsIOS,
//     );

//     flutterLocalNotificationsPlugin.initialize(
//       initializationSettings,
//       onDidReceiveNotificationResponse: (details) {
//         String? route = emptyToNull(details.payload);
//         if (route != null) {
//           if (navigatorKey.currentState?.context != null) {
//             final provider =
//                 navigatorKey.currentState?.context.read<GlobalProvider>();
//             String? currentRoute = provider?.notificationRoute;

//             if (currentRoute != AppNavConstants.NOTIFICATION_HISTORY) {
//               AppNav.toNamed(
//                 navigatorKey.currentState!.context,
//                 route,
//               );
//             }
//           }
//         }
//       },
//     );
//   }

//   static Future<void> showNotification({required RemoteMessage message}) async {
//     final now = DateTime.now();
//     int id = now.hour + now.minute + now.second;
//     String? title = message.data['title'];
//     String? body = message.data['body'];
//     String? route = message.data['route'];

//     AndroidNotificationDetails androidNotificationDetails =
//         AndroidNotificationDetails(
//       '$id',
//       'PTN',
//       channelDescription: 'PTN',
//       importance: Importance.max,
//       priority: Priority.low,
//     );

//     const DarwinNotificationDetails iosNotificationDetails =
//         DarwinNotificationDetails(
//       presentBadge: false,
//       presentAlert: false,
//       presentSound: true,
//     );
//     NotificationDetails notificationDetails = NotificationDetails(
//       android: androidNotificationDetails,
//       iOS: iosNotificationDetails,
//     );
//     await flutterLocalNotificationsPlugin.show(
//       id,
//       title,
//       body,
//       payload: route,
//       notificationDetails,
//     );
//   }
// }
