import 'package:flutter/material.dart';
import 'package:flutter_login_bloc/src/pages/widgets/login-widgets/circulo_widget.dart';

class FondoWidget extends StatelessWidget {
  const FondoWidget({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return Container(
        height: size.height * 0.4,
        width: double.infinity,
        child: Stack(children: [
          Positioned(
            top: 50.0,
            left: 30.0,
            child: CirculoWidget(),
          ),
          Positioned(
            top: -40.0,
            right: -30.0,
            child: CirculoWidget(),
          ),
          Positioned(
            bottom: -50.0,
            right: -10.0,
            child: CirculoWidget(),
          ),
          Positioned(
            bottom: 120.0,
            right: 20.0,
            child: CirculoWidget(),
          ),
          Positioned(
            bottom: -50.0,
            left: -20.0,
            child: CirculoWidget(),
          ),
          Container(
            padding: EdgeInsets.only(top: 80.0),
            child: Column(children: [
              Icon(Icons.person_pin_circle, color: Colors.white, size: 100.0),
              SizedBox(
                height: 10.0,
                width: double.infinity,
              ),
              Text('Nasly Escobar',
                  style: TextStyle(color: Colors.white, fontSize: 25.0)),
            ]),
          )
        ]),
        decoration: BoxDecoration(
          gradient: LinearGradient(colors: [
            Color.fromRGBO(63, 63, 156, 1.0),
            Color.fromRGBO(90, 70, 178, 1.0),
          ]),
        ));
  }
}
