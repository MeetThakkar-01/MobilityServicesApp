import 'package:flutter/material.dart';

class PlaceHolderText extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: <Widget>[
        Text(
          "",
          textAlign: TextAlign.center,
        )
      ],
    );
  }
}
