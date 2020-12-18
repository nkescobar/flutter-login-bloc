import 'package:flutter/material.dart';
import 'package:flutter_login_bloc/src/pages/widgets/login-widgets/fondo_login.dart';
import 'package:flutter_login_bloc/src/pages/widgets/login-widgets/form_widget.dart';

class LoginPage extends StatefulWidget {
  LoginPage({Key key}) : super(key: key);

  @override
  _LoginPageState createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          FondoWidget(),
          FormWidget(),
        ],
      ),
    );
  }
}
