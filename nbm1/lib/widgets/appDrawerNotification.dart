import 'package:flutter/material.dart';

class AppDrawerNotification extends StatefulWidget {
  final String text;

  AppDrawerNotification(this.text);

  @override
  _AppDrawerNotificationState createState() => _AppDrawerNotificationState();
}

class _AppDrawerNotificationState extends State<AppDrawerNotification> {
  bool value = false;

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Text(widget.text),
        Switch(
          value: value,
          onChanged: (val) {
            setState(() {
              value = val;
            });
          },
        ),
      ],
    );
  }
}
