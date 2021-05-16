import 'package:flutter/material.dart';

class CurrencyTextField extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    var _size = MediaQuery.of(context).size;
    return Container(
      width: _size.width / 1.4,
      color: Colors.white,
      child: TextField(),
    );
  }
}
