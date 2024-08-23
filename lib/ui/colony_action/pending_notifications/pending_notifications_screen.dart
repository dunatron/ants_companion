import 'package:ants_companion/core/log/loggers.dart';
import 'package:ants_companion/domain/colony_actions/colony_actions.dart';
import 'package:ants_companion/domain/notifications/local_notifications.dart';
import 'package:ants_companion/domain/notifications/models/notification_payload.dart';
import 'package:ants_companion/ui/layouts/page_layout.dart';
import 'package:flutter/material.dart';
import 'package:get_it/get_it.dart';
import 'package:go_router/go_router.dart';
import 'package:intl/intl.dart';

class ColonyActionPendingNotificationsScreen extends StatelessWidget {
  ColonyActionPendingNotificationsScreen({super.key});

  final logger = appLogger(ColonyActionPendingNotificationsScreen);

  String extractDayAndNumberString(String input) {
    logger.d('extractDayAndNumberString: input');
    // Regular expression to match the pattern '/ca-scheduler/1-14'
    final RegExp regExp = RegExp(r'/ca-scheduler/details/(\d+-\d+)');
    final Match? match = regExp.firstMatch(input);

    if (match != null && match.groupCount == 1) {
      // Extract the matched part (e.g., '1-14')
      return match.group(1)!;
    } else {
      // Return an empty string if the pattern doesn't match
      return '';
    }
  }

  @override
  Widget build(BuildContext context) {
    final ColonyActions colonyActions = GetIt.I();
    final localDateFormatter = DateFormat('EEEE h:mm a');
    return Scaffold(
      appBar: AppBar(),
      body: FutureBuilder(
        future: LocalNotifications.pendingNotifications(),
        builder: (context, snapshot) {
          final pendingNotifications = snapshot.data;
          if (pendingNotifications == null) {
            return const CircularProgressIndicator();
          }

          // pendingNotifications.sort((a, b) => a.length.compareTo(b.length));
          pendingNotifications.sort((a, b) => a.id.compareTo(b.id));

          return ListView.builder(
            itemCount: pendingNotifications.length,
            itemBuilder: (context, index) {
              final notification = pendingNotifications[index];
              // return Text('Item ${notification.}');
              // final key = extractDayAndNumberString(notification.payload ?? '');
              final payload = NotificationPayload.fromJsonStringOrNull(
                notification.payload ?? '',
              );

              if (payload is ColonyActionNotificationPayload) {
                return StreamBuilder(
                  stream: colonyActions.byKey(payload.caKey),
                  builder: (context, snapshot) {
                    final colonyAction = snapshot.data;
                    return Container(
                      padding: EdgeInsets.all(16),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        mainAxisAlignment: MainAxisAlignment.start,
                        children: [
                          Text('Id: ${notification.id}'),
                          Text('Title: ${notification.title}'),
                          Text('Body: ${notification.body}'),
                          Text('Payload: ${notification.payload}'),
                          Text('Key: ${colonyAction?.key}'),
                          Text('Date : ${colonyAction?.date}'),
                          Text('UTC: ${colonyAction?.date.toUtc()}'),
                          Text(
                              'Local: ${localDateFormatter.format(colonyAction?.date.toLocal() ?? DateTime.now())}'),
                          Text('Enabled: ${colonyAction?.notificationEnabled}'),
                          ElevatedButton(
                              onPressed: () {
                                context.go(
                                    '/ca-scheduler/details/${payload.caKey}');
                              },
                              child: Text('Edit'))
                        ],
                      ),
                    );
                  },
                );
              }

              return Container(
                padding: const EdgeInsets.all(16),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    Text('Id: ${notification.id}'),
                    Text('Title: ${notification.title}'),
                    Text('Body: ${notification.body}'),
                    Text('Payload: ${notification.payload}'),
                  ],
                ),
              );
            },
          );
        },
      ),
    );
  }
}
