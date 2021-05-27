library rounded_dialogs;

import 'package:flutter/material.dart';

class ShowRoundedDialog {
  ShowRoundedDialog({
    required this.child,
    required this.height,
    required this.width,
    this.curveRadius,
  });
  final child;
  final int? curveRadius;
  final double height;
  final double width;

  Future showCustomDialog(context) async {
    showDialog(
        context: context,
        builder: (context) {
          return Dialog(
            shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(
                    curveRadius == null ? 35 : curveRadius as double)),
            child: Container(
              clipBehavior: Clip.hardEdge,
              height: height,
              width: width,
              child: child,
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.circular(
                    curveRadius == null ? 35 : curveRadius as double),
              ),
            ),
          );
        });
  }
}
