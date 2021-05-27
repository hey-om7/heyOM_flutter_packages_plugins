import 'package:flutter/material.dart';
import 'package:rounded_dialogs/rounded_dialogs.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        body: Container(
          alignment: Alignment.center,
          child: ElevatedButton(
            child: Text('Show Dialog'),
            onPressed: () {
              ShowRoundedDialog(
                      child: Center(child: Text('Congrats!!!')),
                      height: 200,
                      width: 250)
                  .showCustomDialog(context);
            },
          ),
        ),
      ),
    );
  }
}
