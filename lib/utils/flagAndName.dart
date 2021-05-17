import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

Container flagAndCName({@required String cName, @required Color color}) {
  String valueChose;
  List listItem = ["IND", "USD", "UK", "GBP", "INR"];
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

        DropdownButton(
            value: valueChose,
            onChanged: (newValue) {
              setState(() {
                valueChose = newValue;
              });
            },
            items: listItem.map((valueItem) {
              return DropdownMenuItem(value: valueItem, child: Text(valueItem));
            }).toList()),

        // Icon(Icons.arrow_drop_down),
      ],
    ),
  );
}

void setState(Null Function() param0) {}
