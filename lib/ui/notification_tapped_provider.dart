import 'package:ants_companion/domain/external_app_launcher/external_app_launcher.dart';
import 'package:ants_companion/domain/notifications/local_notifications.dart';

import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

class NotificationTappedProvider extends StatefulWidget {
  const NotificationTappedProvider({super.key, required this.child});

  final Widget child;

  @override
  State<NotificationTappedProvider> createState() =>
      _NotificationTappedProviderState();
}

class _NotificationTappedProviderState
    extends State<NotificationTappedProvider> {
  @override
  void initState() {
    super.initState();
    listenToNotifications();
  }

  listenToNotifications() {
    print('Listening to notifications');
    LocalNotifications.onClickNotification.stream.listen((event) async {
      print('Received Notification $event');
      if (event.isNotEmpty) {
        context.go(event);
        Future.delayed(Duration(seconds: 5), () {
          ExternalAppLauncher.launchAntsUndergroundKingdom();
        });
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    return widget.child;
  }
}
