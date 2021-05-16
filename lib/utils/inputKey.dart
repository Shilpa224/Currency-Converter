import 'package:flutter/material.dart';

class KeyboardNumber extends StatelessWidget {
  final String n;
  final Function() onPressed;
  KeyboardNumber({this.n, this.onPressed});
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onPressed,
      child: Container(
        width: 60.0,
        height: 60.0,
        decoration: BoxDecoration(
          shape: BoxShape.circle,
          // color: Colors.purpleAccent.withOpacity(0.1),
        ),
        alignment: Alignment.center,
        child: Text(
          n,
          textAlign: TextAlign.center,
          style: TextStyle(
            fontSize: 28 * MediaQuery.of(context).textScaleFactor,
            color: Colors.black,
            fontWeight: FontWeight.bold,
          ),
        ),
      ),
    );
  }
}
