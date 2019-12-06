import 'package:bigbackend/utility/my_style.dart';
import 'package:flutter/material.dart';

class Auten extends StatefulWidget {
  @override
  _AutenState createState() => _AutenState();
}

class _AutenState extends State<Auten> {
  // Field

  // Method

  Widget userForm() {
    return Container(
      width: 250.0,
      child: TextFormField(
        decoration: InputDecoration(
          enabledBorder: OutlineInputBorder(
              borderSide: BorderSide(
            color: MyStyle().textColor,
          )),
          labelText: 'User : '
        ),
      ),
    );
  }

  Widget showAppName() { 
    return Text(
      MyStyle().appName,
      style: MyStyle().h1Style,
    );
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
              showLogo(),
              SizedBox(
                height: 10.0,
              ),
              showAppName(),
              SizedBox(
                height: 10.0,
              ),
              userForm(),
            ],
          ),
        ),
      ),
    );
  }
}
