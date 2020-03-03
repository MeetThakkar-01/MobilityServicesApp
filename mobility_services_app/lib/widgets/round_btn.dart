import 'package:flutter/material.dart';
import 'file:///D:/MobilityServicesApp/mobility_services_app/lib/services/styles.dart';

import 'file:///D:/MobilityServicesApp/mobility_services_app/lib/widgets/custom_text.dart';

class RoundBtn extends StatelessWidget {
  final String msg;
  final Function function;

  RoundBtn({
    this.function,
    this.msg,
  });

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: function,
      child: Container(
        decoration: BoxDecoration(
            color: black, borderRadius: BorderRadius.circular(30)),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Padding(
              padding: const EdgeInsets.only(top: 20, bottom: 20),
              child: CustomText(
                msg: msg,
                color: white,
              ),
            )
          ],
        ),
      ),
    );
  }
}
