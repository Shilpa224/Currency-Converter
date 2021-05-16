import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

Container flagAndCName({@required String cName, @required Color color}) {
  return Container(
    padding: EdgeInsets.all(10),
    width: 150,
    child: Row(
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      children: [
        CircleAvatar(
          backgroundColor: color,
          radius: 15,
        ),
        Text(cName),
        Icon(Icons.arrow_drop_down),
      ],
    ),
  );
}
