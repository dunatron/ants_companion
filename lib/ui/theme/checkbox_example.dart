import 'package:flutter/material.dart';

class CheckboxExample extends StatefulWidget {
  const CheckboxExample({super.key, required this.label});

  final String label;

  @override
  State<CheckboxExample> createState() => _CheckboxExampleState();
}

class _CheckboxExampleState extends State<CheckboxExample> {
  bool? checked = false;

  onPressed(bool? newVal) {
    setState(() {
      checked = newVal;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        ElevatedButton(onPressed: () {}, child: Text(widget.label)),
        Checkbox(value: true, onChanged: (v) => onPressed(v))
      ],
    );
  }
}
