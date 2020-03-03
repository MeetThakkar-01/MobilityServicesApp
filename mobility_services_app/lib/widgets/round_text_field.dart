import 'package:flutter/material.dart';
import 'file:///D:/MobilityServicesApp/mobility_services_app/lib/services/styles.dart';

class RoundTextField extends StatelessWidget {
  final String hint;

  RoundTextField(this.hint);

  @override
  Widget build(BuildContext context) {
    return TextField(
      textAlign: TextAlign.center,
      decoration: InputDecoration(
          hintText: hint,
          hintStyle: TextStyle(color: black, fontSize: 20),
          border: OutlineInputBorder(borderRadius: BorderRadius.circular(30))),
    );
  }
}
