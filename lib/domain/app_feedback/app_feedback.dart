import 'dart:io';
import 'dart:typed_data';

import 'package:feedback/feedback.dart';
import 'package:flutter_email_sender/flutter_email_sender.dart';
import 'package:path_provider/path_provider.dart';

class AppFeedback {
  Future<String> _writeImageToStorage(Uint8List feedbackScreenshot) async {
    final Directory output = await getTemporaryDirectory();
    final String screenshotFilePath = '${output.path}/feedback.png';
    final File screenshotFile = File(screenshotFilePath);
    await screenshotFile.writeAsBytes(feedbackScreenshot);
    return screenshotFilePath;
  }

  Future<void> submitFeedback(UserFeedback feedback) async {
    final screenshot = feedback.screenshot;
    final message = feedback.text;
    try {
      final screenshotFilePath = await _writeImageToStorage(screenshot);

      final Email email = Email(
        body: message,
        subject: 'App Feedback',
        recipients: ['antscompanion@gmail.com'],
        attachmentPaths: [screenshotFilePath],
        isHTML: false,
      );
      await FlutterEmailSender.send(email);
    } catch (e) {
      print(e);
    }
  }
}
