import 'package:flutter/material.dart';
import 'package:flutter_login_bloc/src/blocs/provider.dart';

class PasswordInputWidget extends StatelessWidget {
  final LoginBloc bloc;

  const PasswordInputWidget({
    Key key,
    @required this.bloc,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return StreamBuilder(
        stream: bloc.passwordStream,
        builder: (BuildContext context, AsyncSnapshot snapshop) {
          return Container(
            padding: EdgeInsets.symmetric(horizontal: 20.0),
            child: TextField(
              obscureText: true,
              decoration: InputDecoration(
                icon: Icon(
                  Icons.lock_outline,
                  color: Colors.deepPurple,
                ),
                labelText: 'Contraseña',
                counterText: snapshop.data,
                errorText: snapshop.error,
                //errorText: 'Hola',
              ),
              onChanged: (value) => bloc.changePassword(value),
            ),
          );
        });
  }
}
