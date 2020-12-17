import 'package:flutter/material.dart';

class EmailInputWidget extends StatelessWidget {
  const EmailInputWidget({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(horizontal: 20.0),
      child: TextField(
        keyboardType: TextInputType.emailAddress,
        decoration: InputDecoration(
          icon: Icon(
            Icons.alternate_email,
            color: Colors.deepPurple,
          ),
          hintText: 'ejemplo@correo.com',
          labelText: 'Correo electronico'
        ),
      ),
    );
  }
}
