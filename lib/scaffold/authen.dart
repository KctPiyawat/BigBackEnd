import 'package:bigbackend/utility/my_style.dart';
import 'package:flutter/material.dart';

class Auten extends StatefulWidget {
  @override
  _AutenState createState() => _AutenState();
}

class _AutenState extends State<Auten> {
  // Field

  // Method
  Widget showAppName(){
    return Text(MyStyle().appName,style: MyStyle().h1Style,);
  }

  Widget showLogo() {
    return Container(
      width: 150.0,
      height: 150.0,
      child: Image.network(MyStyle().urlLogo),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Center(
          child: Column(
            mainAxisSize: MainAxisSize.min,
            children: <Widget>[
              showLogo(),showAppName(),
            ],
          ),
        ),
      ),
    );
  }
}
