import 'package:flutter/material.dart';

class CurrencyTextField extends StatelessWidget {
  final TextEditingController controller;

  const CurrencyTextField({Key key, @required this.controller})
      : super(key: key);
  @override
  Widget build(BuildContext context) {
    var _size = MediaQuery.of(context).size;
    return Container(
      width: _size.width / 1.3,
      color: Colors.white,
      child: TextField(),
    );
  }
}
