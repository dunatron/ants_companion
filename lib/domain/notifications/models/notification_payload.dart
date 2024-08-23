import 'dart:convert';

import 'package:ants_companion/core/log/loggers.dart';
import 'package:logger/logger.dart';

final notificationPayloadLogger = Logger();

sealed class NotificationPayload {
  NotificationPayload();

  static Logger get logger => appLogger(NotificationPayload);

  static NotificationPayload fromJsonString(String jsonString) {
    final Map<String, dynamic> data = jsonDecode(jsonString);

    switch (data['type']) {
      case 'colonyAction':
        return ColonyActionNotificationPayload.fromJson(data);
      default:
        throw UnsupportedError('Unsupported notification type');
    }
  }

  static NotificationPayload? fromJsonStringOrNull(String jsonString) {
    try {
      return fromJsonString(jsonString);
    } catch (e) {
      logger.d('Unable to return notification payload: $e');
      return null;
    }
  }

  // Convert the notification payload to a JSON string
  String toJsonString();
}

class ColonyActionNotificationPayload extends NotificationPayload {
  ColonyActionNotificationPayload({
    required this.caKey,
    required this.scheduledAt,
    required this.scheduledFor,
  });

  final String caKey;
  final DateTime scheduledAt;
  final DateTime scheduledFor;

  @override
  String toJsonString() {
    return jsonEncode({
      'type': 'colonyAction',
      'caKey': caKey,
      'scheduledAt': scheduledAt.toIso8601String(),
      'scheduledFor': scheduledFor.toIso8601String(),
    });
  }

  static ColonyActionNotificationPayload fromJson(Map<String, dynamic> data) {
    return ColonyActionNotificationPayload(
      caKey: data['caKey'],
      scheduledAt: DateTime.parse(data['scheduledAt']),
      scheduledFor: DateTime.parse(data['scheduledAt']),
    );
  }
}
