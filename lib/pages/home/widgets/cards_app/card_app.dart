import 'package:flutter/material.dart';


class CardApp extends StatelessWidget {
  final Widget widget;
  final double height;
  const CardApp({Key? key, required this.widget, required this.height}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.fromLTRB(20, 10, 20, 10),
      child: Container(
        height: height,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(10),
          color: Colors.white,
        ),
        child: widget,
      ),
    );
  }
}
