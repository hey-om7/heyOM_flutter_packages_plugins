import 'package:back_pressed/back_pressed.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: OnBackPressed(
        perform: () {
          print('The back button on the device was pressed');
        },
        child: Scaffold(
          body: Container(),
        ),
      ),
    );
  }
}
