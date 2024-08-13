import 'package:ants_companion/app/app_locale_provider.dart';
import 'package:ants_companion/bootstrap/bootstrap.dart';
import 'package:ants_companion/domain/ads/ads_service.dart';
import 'package:ants_companion/domain/notifications/local_notifications.dart';

import 'package:flutter/material.dart';

// final LocalNotifications localNotifications = LocalNotifications();

void main() async {
  await bootstrap();

  final adsService = AdsService();
  await adsService.initialize();

  await LocalNotifications.init();

  runApp(const AppLocaleProvider());

  // runApp(AppLocaleProvider((locale) => App(currentLocale: locale)));
}


// import 'package:ants_companion/domain/external_app_launcher/external_app_launcher.dart';
// import 'package:flutter/material.dart';
// import 'package:flutter_local_notifications/flutter_local_notifications.dart';

// final FlutterLocalNotificationsPlugin flutterLocalNotificationsPlugin =
//     FlutterLocalNotificationsPlugin();

// final GlobalKey<NavigatorState> navigatorKey = GlobalKey<NavigatorState>();

// // This function will be called when a notification is tapped
// Future<void> onSelectNotification(String? payload) async {
//   if (payload != null) {
//     // Handle navigation based on the payload
//     Navigator.of(navigatorKey.currentContext!).pushNamed(payload);
//   }
// }

// @pragma('vm:entry-point')
// void notificationTapBackground(NotificationResponse notificationResponse) {
//   // Navigator.of(navigatorKey.currentContext!).pushNamed('/destination');
//   // ExternalAppLauncher.launchAntsUndergroundKingdom();
//   Navigator.of(navigatorKey.currentContext!)
//       .pushNamed(notificationResponse.payload!);
// }

// void main() async {
//   WidgetsFlutterBinding.ensureInitialized();

//   void onNotificationTap(
//     NotificationResponse notificationResponse,
//   ) {
//     Navigator.of(navigatorKey.currentContext!).pushNamed('/destination');
//     // ExternalAppLauncher.launchAntsUndergroundKingdom();
//     // onClickNotification.add(notificationResponse.payload!);
//   }

//   // Initialize the notifications plugin
//   const AndroidInitializationSettings initializationSettingsAndroid =
//       AndroidInitializationSettings('@mipmap/ic_launcher');
//   final InitializationSettings initializationSettings = InitializationSettings(
//     android: initializationSettingsAndroid,
//   );

//   await flutterLocalNotificationsPlugin.initialize(
//     initializationSettings,
//     onDidReceiveNotificationResponse: onNotificationTap,
//     onDidReceiveBackgroundNotificationResponse: notificationTapBackground,
//   );

//   // final launchedDetails =
//   //     await flutterLocalNotificationsPlugin.getNotificationAppLaunchDetails();

//   // if (launchedDetails != null) {
//   //   // launchedDetails.notificationResponse
//   //   Navigator.of(navigatorKey.currentContext!).pushNamed('/destination');
//   // }

//   runApp(MyApp());
// }

// Future<void> showNotification() async {
//   const AndroidNotificationDetails androidPlatformChannelSpecifics =
//       AndroidNotificationDetails(
//     'your_channel_id',
//     'your_channel_name',
//     importance: Importance.max,
//     priority: Priority.high,
//     playSound: true,
//   );

//   const NotificationDetails platformChannelSpecifics = NotificationDetails(
//     android: androidPlatformChannelSpecifics,
//   );

//   await flutterLocalNotificationsPlugin.show(
//     0,
//     'Notification Title',
//     'Notification Body',
//     platformChannelSpecifics,
//     payload: '/destination', // Specify the route here
//   );
// }

// class MyApp extends StatelessWidget {
//   @override
//   Widget build(BuildContext context) {
//     return MaterialApp(
//       navigatorKey: navigatorKey,
//       home: HomeScreen(),
//       routes: {
//         '/destination': (context) => DestinationScreen(),
//       },
//     );
//   }
// }

// class HomeScreen extends StatelessWidget {
//   const HomeScreen({super.key});

//   checkLaunched() async {
//     final launchedDetails =
//         await flutterLocalNotificationsPlugin.getNotificationAppLaunchDetails();

//     if (launchedDetails != null) {
//       if (launchedDetails.didNotificationLaunchApp) {
//         // launchedDetails.notificationResponse
//         // Navigator.of(navigatorKey.currentContext!).pushNamed('/destination');
//         Future.delayed(Duration(seconds: 3), () {
//           ExternalAppLauncher.launchAntsUndergroundKingdom();
//         });
//       }
//     }
//   }

//   @override
//   Widget build(BuildContext context) {
//     checkLaunched();
//     const NotificationDetails platformChannelSpecifics = NotificationDetails(
//       android: AndroidNotificationDetails(
//         'your channel id',
//         'your channel name',
//         channelDescription: 'your channel description',
//         importance: Importance.max,
//         priority: Priority.high,
//         ticker: 'ticker',
//       ),
//     );
//     return Scaffold(
//       appBar: AppBar(
//         title: Text('Home'),
//       ),
//       body: Column(
//         children: [
//           ElevatedButton(
//               onPressed: () async {
//                 await flutterLocalNotificationsPlugin.show(
//                   0,
//                   'Notification Title',
//                   'Notification Body',
//                   platformChannelSpecifics,
//                   payload: '/destination', // Specify the route here
//                 );
//               },
//               child: Text('Launch Notification'))
//         ],
//       ),
//     );
//   }
// }

// class DestinationScreen extends StatelessWidget {
//   const DestinationScreen({super.key});

//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: AppBar(
//         title: Text('Destination'),
//       ),
//     );
//   }
// }






