import 'package:flutter/material.dart';

class CirculoWidget extends StatelessWidget {
  const CirculoWidget({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 100.0,
      width: 100.0,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(100),
        color: Color.fromRGBO(255, 255, 255, 0.1)
      ),
    );
  }
}