import 'package:flutter/material.dart';
import 'package:firebase_auth/firebase_auth.dart';

import './screens/homeScreen.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: NBM(),
    );
  }
}

class NBM extends StatefulWidget {
  @override
  _NBMState createState() => _NBMState();
}

class _NBMState extends State<NBM> {
  @override
  Widget build(BuildContext context) {
    return StreamBuilder(
      stream: FirebaseAuth.instance.onAuthStateChanged,
      builder: (ctx, streamSnapshot) {
        if (streamSnapshot.connectionState == ConnectionState.waiting) {
          return Center(
            child: CircularProgressIndicator(),
          );
        }
        return HomeScreen();
      },
    );
  }
}
