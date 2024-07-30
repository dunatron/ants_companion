import 'package:ants_companion/app/app.dart';
import 'package:ants_companion/bootstrap/bootstrap.dart';

import 'package:flutter/material.dart';

void main() async {
  await bootstrap();

  runApp(const App());
}
