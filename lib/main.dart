import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_project/screens/otpScreen.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  Widget build(BuildContext context) {
    SystemChrome.setPreferredOrientations(
        [DeviceOrientation.portraitDown, DeviceOrientation.portraitUp]);
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: MyAppBar(),
    );
  }
}

class MyAppBar extends StatefulWidget {
  @override
  _MyAppBarState createState() => _MyAppBarState();
}

class _MyAppBarState extends State<MyAppBar> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        decoration: BoxDecoration(
            gradient: LinearGradient(
          colors: [
            Colors.deepPurpleAccent,
            Colors.deepPurple,
          ],
          begin: Alignment.topRight,
        )),
        child: OtpScreen(),
      ),
    );
  }
}
