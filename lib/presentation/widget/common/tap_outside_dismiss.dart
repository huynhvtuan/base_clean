import 'package:flutter/material.dart';

class TapOutSideDismiss extends StatelessWidget {
  const TapOutSideDismiss({Key? key, required this.child}) : super(key: key);
  final Widget child;

  _dismissKeyboard() {
    FocusManager.instance.primaryFocus?.unfocus();
  }

  @override
  Widget build(BuildContext context) {
    return GestureDetector(onTap: _dismissKeyboard, child: child);
  }
}
