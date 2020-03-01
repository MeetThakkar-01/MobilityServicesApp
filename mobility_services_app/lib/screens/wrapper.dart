import "package:flutter/material.dart";
import 'package:mobility_services_app/screens/home/home.dart';

class Wrapper extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // return either Home Or Authenticate Widget
    return Home();
  }
}
