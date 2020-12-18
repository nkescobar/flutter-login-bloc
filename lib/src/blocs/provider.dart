import 'package:flutter/material.dart';
import 'package:flutter_login_bloc/src/blocs/login_bloc.dart';
export 'package:flutter_login_bloc/src/blocs/login_bloc.dart';

class Provider extends InheritedWidget {
  final Widget child;

  static Provider _intancia;

  factory Provider({Key key, Widget child}) {
    if (_intancia == null) {
      _intancia = new Provider._internal(
        key: key,
        child: child,
      );
    }
    return _intancia;
  }

  Provider._internal({Key key, this.child}) : super(key: key, child: child);

  // si se deja asi, se pierde la información
  // los bloc con patron singleton
  final loginBloc = LoginBloc();

  //Provider({Key key, this.child}) : super(key: key, child: child);

  static LoginBloc of(BuildContext context) {
    return context.dependOnInheritedWidgetOfExactType<Provider>().loginBloc;
  }

  @override
  bool updateShouldNotify(InheritedWidget oldWidget) {
    return true;
  }
}
