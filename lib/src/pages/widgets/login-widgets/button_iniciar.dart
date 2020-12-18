import 'package:flutter/material.dart';
import 'package:flutter_login_bloc/src/blocs/provider.dart';

class ButtonLoginWidget extends StatelessWidget {
  final LoginBloc bloc;

  const ButtonLoginWidget({
    Key key,
    @required this.bloc,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return StreamBuilder(
        stream: bloc.formValidStream,
        builder: (context, snapshot) {
          print(snapshot.hasData);

          return RaisedButton(
            child: Container(
              padding: EdgeInsets.symmetric(horizontal: 80.0, vertical: 15.0),
              child: Text('Ingresa'),
            ),
            shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(5.0)),
            elevation: 0.0,
            color: Colors.deepPurple,
            textColor: Colors.white,
            onPressed: snapshot.hasData ? () => _login(context) : null,
          );
        });
  }

  _login(BuildContext context) {
    print('---------');

    print('Email ${bloc.email}');
    print('Password ${bloc.password}');
    Navigator.pushReplacementNamed(context, 'home');
    print('---------');
  }
}
