import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:flutter_login_bloc/src/blocs/provider.dart';
import 'package:flutter_login_bloc/src/pages/widgets/login-widgets/button_iniciar.dart';
import 'package:flutter_login_bloc/src/pages/widgets/login-widgets/email_input.dart';
import 'package:flutter_login_bloc/src/pages/widgets/login-widgets/password_input.dart';

class FormWidget extends StatelessWidget {
  const FormWidget({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    final bloc = Provider.of(context);

    return SingleChildScrollView(
        child: Column(
      children: [
        SafeArea(
            child: Container(
          height: 200.0,
        )),
        Container(
          width: size.width * 0.85,
          margin: EdgeInsets.symmetric(vertical: 30.0),
          padding: EdgeInsets.symmetric(vertical: 50.0),
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(5.0),
            color: Colors.white,
            boxShadow: [
              BoxShadow(
                blurRadius: 3.0,
                color: Colors.black26,
                offset: Offset(0, 5.9),
                spreadRadius: 3.0,
              )
            ],
          ),
          child: Column(children: [
            Text(
              'Ingreso',
              style: TextStyle(fontSize: 20.0),
            ),
            SizedBox(height: 60.0),
            EmailInputWidget(
              bloc: bloc,
            ),
            SizedBox(height: 30.0),
            PasswordInputWidget(
              bloc: bloc,
            ),
            SizedBox(height: 30.0),
            ButtonLoginWidget(bloc: bloc),
          ]),
        ),
        Text('¿Olvido la contraseña?'),
        SizedBox(
          height: 100,
        )
      ],
    ));
  }
}
