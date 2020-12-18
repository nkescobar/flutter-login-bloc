import 'package:flutter/material.dart';
import 'package:flutter_login_bloc/src/blocs/login_bloc.dart';

class EmailInputWidget extends StatelessWidget {
  final LoginBloc bloc;
  const EmailInputWidget({
    Key key,
    @required this.bloc,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return StreamBuilder(
      stream: bloc.emailStream,
      builder: (BuildContext context, AsyncSnapshot snapshop) {
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
                labelText: 'Correo electronico',
                counterText: snapshop.data,
                errorText: snapshop.error),
            onChanged: (value) => bloc.changeEmail(value),
          ),
        );
      },
    );
  }
}
