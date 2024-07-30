import 'package:ants_companion/app/app.dart';
import 'package:ants_companion/bootstrap/bootstrap.dart';
import 'package:ants_companion/domain/notifications/local_notifications.dart';

import 'package:flutter/material.dart';

void main() async {
  await bootstrap();

  await LocalNotifications.init();

  runApp(const App());
}
