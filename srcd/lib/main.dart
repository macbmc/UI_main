import 'package:flutter/material.dart';
import 'package:clgprod/home.dart';

void main() async {
  runApp(MyApp());

}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return  Home();
  }

}