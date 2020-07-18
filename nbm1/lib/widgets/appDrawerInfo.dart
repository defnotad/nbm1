import 'package:flutter/material.dart';

class AppDrawerInfo extends StatelessWidget {
  final String text;
  final IconData icon;

  AppDrawerInfo(this.text, this.icon);

  @override
  Widget build(BuildContext context) {
    final deviceSize = MediaQuery.of(context).size;

    return Container(
      margin: EdgeInsets.only(top: deviceSize.height * 0.01),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Icon(icon),
          FlatButton(
            onPressed: () {},
            child: Text(text),
          ),
        ],
      ),
    );
  }
}
