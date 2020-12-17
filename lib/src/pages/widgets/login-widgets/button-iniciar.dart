import 'package:flutter/material.dart';

class ButtonLoginWidget extends StatelessWidget {
  const ButtonLoginWidget({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return RaisedButton(
      child: Container(
        padding: EdgeInsets.symmetric(horizontal: 80.0, vertical: 15.0),
        child: Text('Ingresa'),),
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(5.0)
        ),
        elevation: 0.0,
       onPressed: () {

       },
    );
  }
}