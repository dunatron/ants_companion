import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class EditColonyActionTime extends StatelessWidget {
  const EditColonyActionTime({super.key});

  @override
  Widget build(BuildContext context) {
    Duration initialTimerDuration = const Duration(minutes: 5);
    return IconButton(
      onPressed: () {
        showDialog(
          context: context,
          builder: (context) {
            return Dialog(
              child: Column(
                children: [
                  CupertinoTimerPicker(
                    initialTimerDuration: initialTimerDuration,
                    mode: CupertinoTimerPickerMode.ms,
                    onTimerDurationChanged: (value) {},
                  )
                ],
              ),
            );
          },
        );
      },
      icon: const Icon(Icons.edit),
    );
  }
}

class MinutePickerExample extends StatefulWidget {
  const MinutePickerExample({super.key});

  @override
  _MinutePickerExampleState createState() => _MinutePickerExampleState();
}

class _MinutePickerExampleState extends State<MinutePickerExample> {
  int selectedMinute = 5; // Initial selected minute

  void _showMinutePicker() {
    showCupertinoModalPopup(
      context: context,
      builder: (_) => Container(
        height: 300,
        // color: Colors.pink,
        child: CupertinoPicker(
          scrollController:
              FixedExtentScrollController(initialItem: selectedMinute),
          itemExtent: 32.0,
          onSelectedItemChanged: (int index) {
            setState(() {
              selectedMinute = index;
            });
          },
          children: List<Widget>.generate(
            60,
            (int index) => Center(
              child: Text('$index min'),
            ),
          ),
        ),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      onPressed: _showMinutePicker,
      child: Text('Select Minutes'),
    );
  }
}
