import 'package:flutter/material.dart';
import 'package:flutter_login_bloc/src/blocs/provider.dart';

class HomePage extends StatefulWidget {
  HomePage({Key key}) : super(key: key);

  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    final bloc = Provider.of(context);

    return Scaffold(
      appBar: AppBar(
        title: Text('Home page'),
      ),
      body: Center(
        child: Container(
          padding: EdgeInsets.symmetric(vertical: 150.0, horizontal: 50.0),
          child: Column(
            children: [
              Text('Email: ${bloc.email}'),
              Divider(),
              Text('Password: ${bloc.password}'),
            ],
          ),
        ),
      ),
    );
  }
}
