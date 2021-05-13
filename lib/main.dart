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

// class PINNumber extends StatelessWidget {
//   final TextEditingController textEditingController;
//   final OutlineInputBorder outlineInputBorder;
//   PINNumber({this.textEditingController, this.outlineInputBorder});
//
//
//   @override
//   Widget build(BuildContext context) {
//     return Container(
//       width: 0,
//       child: TextField(
//         controller: textEditingController,
//         enabled: false,
//         obscureText: true,
//         textAlign: TextAlign.center,
//         decoration: InputDecoration(
//           contentPadding: EdgeInsets.all(0),
//           border: outlineInputBorder,
//           filled: false,
//           fillColor: Colors.transparent,
//         ),
//         style: TextStyle(
//           fontWeight: FontWeight.bold,
//           fontSize: 0,
//           color: Colors.transparent,
//         ),
//       ),
//     );
//   }
// }
