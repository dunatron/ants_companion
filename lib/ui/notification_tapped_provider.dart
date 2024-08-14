import 'package:ants_companion/core/log/loggers.dart';
import 'package:ants_companion/core/snackbar_service.dart';
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
  final logger = appLogger(NotificationTappedProvider);

  @override
  void initState() {
    super.initState();
    listenToNotifications();
  }

  _handleColonyActionNotificationPayload(String payload) {
    context.go(payload);
    SnackbarService().showOpenAntsSnackbar();
  }

  listenToNotifications() {
    logger.d('Listening to notifications');
    LocalNotifications.onClickNotification.stream.listen((event) async {
      logger.d('Received Notification $event');
      if (event.isNotEmpty) {
        if (event.contains('/ca-scheduler')) {
          _handleColonyActionNotificationPayload(event);
        }
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    return widget.child;
  }
}
