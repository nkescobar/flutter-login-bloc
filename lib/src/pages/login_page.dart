import 'package:flutter/material.dart';
import 'package:flutter_login_bloc/src/pages/widgets/login-widgets/circulo-widget.dart';
import 'package:flutter_login_bloc/src/pages/widgets/login-widgets/fondo-login.dart';
import 'package:flutter_login_bloc/src/pages/widgets/login-widgets/form-widget.dart';

class LoginPage extends StatefulWidget {
  LoginPage({Key key}) : super(key: key);

  @override
  _LoginPageState createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  @override
  Widget build(BuildContext context) {
   return  Scaffold(
       body: Stack(
        children: [
         FondoWidget(),
         FormWidget()
         


       ],),
    );
  }
}