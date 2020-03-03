import 'package:flutter/material.dart';
import 'package:mobility_services_app/screens/authenticate/loginThree.dart';
import 'package:mobility_services_app/services/auth.dart';
import 'package:mobility_services_app/services/styles.dart';
import 'package:mobility_services_app/widgets/logo.dart';
import 'package:mobility_services_app/widgets/rectTextInput.dart';
import 'package:mobility_services_app/widgets/round_btn_gradient.dart';

class Register extends StatefulWidget {
  final Function toggleView;
  Register({this.toggleView});

  @override
  _RegisterState createState() => _RegisterState();
}

class _RegisterState extends State<Register> {
  final AuthService _auth = AuthService();
  RectTextInput email;
  RectTextInput pass;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        child: SingleChildScrollView(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              SizedBox(
                height: 40,
              ),
              Logo(),
              Text(
                "Register Here",
                style: TextStyle(
                    letterSpacing: 7,
                    fontSize: 40,
                    color: black,
                    fontWeight: FontWeight.w600),
              ),
              SizedBox(
                height: 30,
              ),
              Padding(
                padding: const EdgeInsets.only(left: 30, right: 30),
                child: email = RectTextInput(
                  hitText: "Email address",
                  icon: Icons.alternate_email,
                ),
              ),
              SizedBox(
                height: 20,
              ),
              Padding(
                padding: const EdgeInsets.only(left: 30, right: 30),
                child: pass = RectTextInput(
                  hitText: "Password",
                  icon: Icons.lock_outline,
                  obscureText: true,
                ),
              ),
              SizedBox(
                height: 20,
              ),
              Padding(
                padding: const EdgeInsets.only(left: 20, right: 20),
                child: RoundBtnGradient(
                  msg: "Sign Up",
                  function: () async {
                    print(email.temp);
                    print(pass.temp);
                  },
                  colorOne: Colors.pink[300],
                  colorTwo: Colors.orange[300],
                ),
              ),
              SizedBox(
                height: 20,
              ),
              Padding(
                padding: const EdgeInsets.only(left: 20, right: 20),
                child: RoundBtnGradient(
                  msg: "Sign In",
                  function: widget.toggleView,
                  colorOne: Colors.pink[300],
                  colorTwo: Colors.orange[300],
                ),
              ),
              SizedBox(
                height: 20,
              ),
              Padding(
                padding: const EdgeInsets.only(left: 30, right: 30),
                child: Row(
                  children: <Widget>[
                    SizedBox(
                      width: 10,
                    ),
                  ],
                ),
              ),
              SizedBox(
                height: 120,
              ),
              Align(
                alignment: Alignment.bottomCenter,
                child: Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: RichText(
                    text: TextSpan(children: [
                      TextSpan(text: "by signing up you agree with our "),
                      TextSpan(
                          text: "Terms and conditions",
                          style: TextStyle(color: red))
                    ], style: TextStyle(color: black)),
                  ),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
