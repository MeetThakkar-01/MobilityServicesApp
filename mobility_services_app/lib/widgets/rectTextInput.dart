import 'package:flutter/material.dart';
import 'file:///D:/MobilityServicesApp/mobility_services_app/lib/services/styles.dart';

class RectTextInput extends StatelessWidget {
  final String hitText;
  final IconData icon;
  final bool obscureText;
  String temp = '';

  RectTextInput({this.icon, this.hitText, this.obscureText = false});

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(border: Border.all(color: grey)),
      child: Padding(
        padding: const EdgeInsets.only(left: 8),
        child: TextField(
          obscureText: obscureText,
          decoration: InputDecoration(
              hintText: hitText, icon: Icon(icon), border: InputBorder.none),
          onChanged: (val) {
            temp = val;
          },
        ),
      ),
    );
  }
}
