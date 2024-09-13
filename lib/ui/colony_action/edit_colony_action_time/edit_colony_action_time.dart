import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import 'package:flutter_gen/gen_l10n/app_localizations.dart';

class EditColonyActionTime extends StatefulWidget {
  const EditColonyActionTime({
    super.key,
    required this.initialDuration,
    required this.onTimeChanged,
  });

  final Function(Duration duration) onTimeChanged;
  final Duration initialDuration;

  @override
  State<EditColonyActionTime> createState() => _EditColonyActionTimeState();
}

class _EditColonyActionTimeState extends State<EditColonyActionTime> {
  late Duration duration;

  @override
  void initState() {
    duration = widget.initialDuration;
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    // Duration initialTimerDuration = const Duration(minutes: 5);
    final l10n = AppLocalizations.of(context);
    return IconButton(
      onPressed: () {
        showModalBottomSheet(
          context: context,
          // enableDrag: true,
          showDragHandle: true,
          builder: (context) {
            return Padding(
              padding: const EdgeInsets.all(16),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  Text(l10n.editColonyActionTimeDescription),
                  CupertinoTimerPicker(
                    initialTimerDuration: duration,
                    mode: CupertinoTimerPickerMode.ms,
                    onTimerDurationChanged: (value) {
                      // shouldnt need to call setState here
                      duration = value;
                    },
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.end,
                    children: [
                      TextButton(
                        onPressed: () {
                          widget.onTimeChanged(duration);
                          Navigator.pop(context);
                        },
                        child: Text(l10n.updateTime),
                      )
                    ],
                  ),
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

// class MinutePickerExample extends StatefulWidget {
//   const MinutePickerExample({super.key});

//   @override
//   _MinutePickerExampleState createState() => _MinutePickerExampleState();
// }

// class _MinutePickerExampleState extends State<MinutePickerExample> {
//   int selectedMinute = 5; // Initial selected minute

//   void _showMinutePicker() {
//     showCupertinoModalPopup(
//       context: context,
//       builder: (_) => Container(
//         height: 300,
//         // color: Colors.pink,
//         child: CupertinoPicker(
//           scrollController:
//               FixedExtentScrollController(initialItem: selectedMinute),
//           itemExtent: 32.0,
//           onSelectedItemChanged: (int index) {
//             setState(() {
//               selectedMinute = index;
//             });
//           },
//           children: List<Widget>.generate(
//             60,
//             (int index) => Center(
//               child: Text('$index min'),
//             ),
//           ),
//         ),
//       ),
//     );
//   }

//   @override
//   Widget build(BuildContext context) {
//     return ElevatedButton(
//       onPressed: _showMinutePicker,
//       child: Text('Select Minutes'),
//     );
//   }
// }
