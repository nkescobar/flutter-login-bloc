import 'package:flutter/material.dart';

class PasswordInputWidget extends StatelessWidget {
  const PasswordInputWidget({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(horizontal: 20.0),
      child: TextField(
        obscureText: true,
        decoration: InputDecoration(
          icon: Icon(
            Icons.lock_outline,
            color: Colors.deepPurple,
          ),
          labelText: 'Contraseña'
        ),
      ),
    );
  }
}
