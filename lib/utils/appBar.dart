import 'package:flutter/material.dart';

Container appBar() {
  return Container(
    child: Padding(
      padding: const EdgeInsets.all(15.0),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          Icon(
            Icons.sort,
            color: Colors.white,
            size: 40,
          ),
          Spacer(),
          CircleAvatar(
            backgroundColor: Colors.yellow,
            backgroundImage: AssetImage('images/avatar.png'),
            radius: 25,
          ),
        ],
      ),
    ),
  );
}
