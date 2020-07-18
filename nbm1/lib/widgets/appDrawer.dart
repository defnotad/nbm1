import 'package:flutter/material.dart';

import './appDrawerInfo.dart';
import './appDrawerNotification.dart';

class AppDrawer extends StatefulWidget {
  @override
  _AppDrawerState createState() => _AppDrawerState();
}

class _AppDrawerState extends State<AppDrawer> {
  List<String> quotes = [];
  var quoteNumber;

  @override
  Widget build(BuildContext context) {
    final deviceSize = MediaQuery.of(context).size;

    return Drawer(
      child: Container(
        margin: EdgeInsets.only(top: deviceSize.height * 0.04),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
//          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            Column(
              children: [
                CircleAvatar(
                  backgroundImage:
                      ExactAssetImage('assets/images/personOutline.png'),
                  minRadius: 30,
                  maxRadius: 45,
                ),
                Text('Username'),
              ],
            ),
            Text('Quote'),
            Column(
              children: [
                AppDrawerInfo('My Profile', Icons.person),
                AppDrawerInfo('Change Password', Icons.vpn_key),
                AppDrawerInfo('About NMB', Icons.info),
              ],
            ),
//            SizedBox(height: deviceSize.height * 0.05),
            Column(
              children: [
                AppDrawerNotification('Show Notifications'),
                AppDrawerNotification('Email Notifications'),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
