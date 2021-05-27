library back_pressed;

import 'package:flutter/material.dart';

class OnBackPressed extends StatelessWidget {
  OnBackPressed({required this.child, required this.perform});
  final child;

  final Function perform;
  @override
  Widget build(BuildContext context) {
    Future<bool> _onPoped() async {
      print('Back button pressed');
      perform();
      return (null) ?? false;
    }

    return WillPopScope(
      onWillPop: _onPoped,
      child: child,
    );
  }
}
