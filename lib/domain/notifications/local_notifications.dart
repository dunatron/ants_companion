import 'dart:io';

import 'package:ants_companion/domain/notifications/notification_channels.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter_local_notifications/flutter_local_notifications.dart';

import 'package:rxdart/subjects.dart';

import 'package:timezone/data/latest.dart' as tz;
import 'package:timezone/timezone.dart' as tz;

// import 'package:flutter_timezone/flutter_timezone.dart';

@pragma('vm:entry-point')
void notificationTapBackground(NotificationResponse notificationResponse) {
  // ignore: avoid_print
  print('notification(${notificationResponse.id}) action tapped: '
      '${notificationResponse.actionId} with'
      ' payload: ${notificationResponse.payload}');
  if (notificationResponse.input?.isNotEmpty ?? false) {
    // ignore: avoid_print
    print(
        'notification action tapped with input: ${notificationResponse.input}');
  }
}

Future<void> _configureLocalTimeZone() async {
  if (kIsWeb || Platform.isLinux) {
    return;
  }
  tz.initializeTimeZones();
  // final String timeZoneName = await FlutterTimezone.getLocalTimezone();
  // tz.setLocalLocation(tz.getLocation(timeZoneName));
  final localLocation = tz.local;
  tz.setLocalLocation(localLocation);
  // tz.setLocalLocation(tz.getLocation(timeZoneName));
}

class LocalNotifications {
  static final FlutterLocalNotificationsPlugin
      _flutterLocalNotificationsPlugin = FlutterLocalNotificationsPlugin();

  static final onClickNotification = BehaviorSubject<String>();

  // on tap any notification
  static void onNotificationTap(
    NotificationResponse notificationResponse,
  ) {
    onClickNotification.add(notificationResponse.payload!);
  }

  /// Initialize the local notifications plugin.
  /// must be awaited before running the main app
  static Future init() async {
    _configureLocalTimeZone();
    // final flutterLocalNotificationsPlugin = FlutterLocalNotificationsPlugin();
    // initialize the plugin. app_icon needs to be a added
    // as a drawable resource to the Android head project
    const initializationSettingsAndroid =
        AndroidInitializationSettings('@mipmap/ic_launcher');

    final initializationSettingsDarwin = DarwinInitializationSettings(
      onDidReceiveLocalNotification: (id, title, body, payload) {
        print('DarwinInitializationSettings: onDidReceiveLocalNotification');
      },
    );
    const initializationSettingsLinux =
        LinuxInitializationSettings(defaultActionName: 'Open notification');

    final initializationSettings = InitializationSettings(
      android: initializationSettingsAndroid,
      iOS: initializationSettingsDarwin,
      macOS: initializationSettingsDarwin,
      linux: initializationSettingsLinux,
    );

    await _flutterLocalNotificationsPlugin.initialize(
      initializationSettings,
      onDidReceiveNotificationResponse: onNotificationTap,
      onDidReceiveBackgroundNotificationResponse: notificationTapBackground,
    );

    didNotificationLaunchApp();
  }

  static Future<List<PendingNotificationRequest>> pendingNotifications() async {
    final v =
        await _flutterLocalNotificationsPlugin.pendingNotificationRequests();

    return v;
  }

  static Future showSimpleNotification({
    required String title,
    required String body,
    required String payload,
  }) async {
    await _flutterLocalNotificationsPlugin.show(
      0,
      title,
      body,
      NotificationChannels.channelOneDetails(),
      payload: payload,
    );
  }

  /// show a periodic notification at a regular interval
  static Future showPeriodicNotification({
    required String title,
    required String body,
    required String payload,
  }) async {
    await _flutterLocalNotificationsPlugin.periodicallyShow(
      1,
      title,
      body,
      RepeatInterval.everyMinute,
      NotificationChannels.channelOneDetails(),
    );
  }

  static Future cancelNotificationChannel(int id) async {
    await _flutterLocalNotificationsPlugin.cancel(id);
  }

  static Future cancelAllNotifications() async {
    await _flutterLocalNotificationsPlugin.cancelAll();
  }

  static Future scheduleNotification({
    required String title,
    required String body,
    required String payload,
  }) async {
    tz.initializeTimeZones();

    return _zonedScheduleNotification(
      title: title,
      body: body,
      payload: payload,
    );
  }

  static Future<void> _zonedScheduleNotification({
    required String title,
    required String body,
    required String payload,
  }) async {
    /// we want to use this. and schedule the DateTimeComponents.dayOfWeekAndTime
    /// this will fir it weekly on the same day and time
    final scheduledDate = tz.TZDateTime.now(tz.local).add(
      const Duration(seconds: 5),
    );

    await _flutterLocalNotificationsPlugin.zonedSchedule(
      3,
      title,
      body,
      scheduledDate,
      NotificationChannels.zonedScheduleChannelDetails(),
      androidScheduleMode: AndroidScheduleMode.alarmClock,
      uiLocalNotificationDateInterpretation:
          UILocalNotificationDateInterpretation.absoluteTime,
      matchDateTimeComponents: DateTimeComponents.time,
    );
  }

  static Future<void> scheduleColonyActionNotification({
    required int id,
    required String title,
    required String body,
    required String payload,
    required DateTime date,
  }) async {
    await requestPermissions();
    final scheduledDate = tz.TZDateTime.from(date, tz.local);

    await _flutterLocalNotificationsPlugin.zonedSchedule(
      id,
      title,
      body,
      scheduledDate,
      NotificationChannels.zonedScheduleChannelDetails(),
      androidScheduleMode: AndroidScheduleMode.alarmClock,
      uiLocalNotificationDateInterpretation:
          UILocalNotificationDateInterpretation.absoluteTime,
      matchDateTimeComponents: DateTimeComponents.time,
    );
  }

  static Future<void> requestPermissions() async {
    if (Platform.isIOS) {
      await _requestIOSPermissions();
    } else if (Platform.isMacOS) {
      await _requestMacOSPermissions();
    } else if (Platform.isAndroid) {
      await _requestAndroidPermissions();
    }
  }

  static Future<void> _requestIOSPermissions() async {
    await _flutterLocalNotificationsPlugin
        .resolvePlatformSpecificImplementation<
            IOSFlutterLocalNotificationsPlugin>()
        ?.requestPermissions(
          alert: true,
          badge: true,
          sound: true,
        );
  }

  static Future<void> _requestMacOSPermissions() async {
    await _flutterLocalNotificationsPlugin
        .resolvePlatformSpecificImplementation<
            MacOSFlutterLocalNotificationsPlugin>()
        ?.requestPermissions(
          alert: true,
          badge: true,
          sound: true,
        );
  }

  static Future<void> _requestAndroidPermissions() async {
    final androidNotificationsPlugin =
        _flutterLocalNotificationsPlugin.resolvePlatformSpecificImplementation<
            AndroidFlutterLocalNotificationsPlugin>();

    if (androidNotificationsPlugin == null) {
      return;
    }
    await androidNotificationsPlugin.requestNotificationsPermission();

    await androidNotificationsPlugin.requestExactAlarmsPermission();

    await androidNotificationsPlugin.requestFullScreenIntentPermission();
  }

  static Future<bool> areNotificationsEnabled() async {
    if (Platform.isIOS) {
      return await _areIOSNotificationsEnabled();
    } else if (Platform.isMacOS) {
      return await _areMacOSNotificationsEnabled();
    } else if (Platform.isAndroid) {
      return await _areAndroidNotificationsEnabled();
    }

    return false;
  }

  static Future<bool> _areMacOSNotificationsEnabled() async {
    final macOSNotificationsPlugin =
        _flutterLocalNotificationsPlugin.resolvePlatformSpecificImplementation<
            MacOSFlutterLocalNotificationsPlugin>();

    if (macOSNotificationsPlugin == null) {
      return false;
    }

    final enabledOptions = await macOSNotificationsPlugin.checkPermissions();
    if (enabledOptions == null) {
      return false;
    }
    return enabledOptions.isEnabled;
  }

  static Future<bool> _areIOSNotificationsEnabled() async {
    final enabledOptions = await _flutterLocalNotificationsPlugin
        .resolvePlatformSpecificImplementation<
            IOSFlutterLocalNotificationsPlugin>()
        ?.checkPermissions();
    if (enabledOptions == null) {
      return false;
    }

    return enabledOptions.isEnabled;
  }

  static Future<bool> _areAndroidNotificationsEnabled() async {
    final enabled = await _flutterLocalNotificationsPlugin
        .resolvePlatformSpecificImplementation<
            AndroidFlutterLocalNotificationsPlugin>()
        ?.areNotificationsEnabled();

    return enabled ?? true;
  }

  static Future<void> didNotificationLaunchApp() async {
    final details = await _flutterLocalNotificationsPlugin
        .getNotificationAppLaunchDetails();

    if (details != null) {
      final didNotificationLaunchApp = details.didNotificationLaunchApp;
      if (didNotificationLaunchApp) {
        // ExternalAppLauncher.launchAntsUndergroundKingdom();
        onClickNotification.add(details.notificationResponse!.payload!);
      }
    }
  }
}
