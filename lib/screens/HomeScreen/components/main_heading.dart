import 'package:flutter/material.dart';

class MainHeading extends StatelessWidget {
  const MainHeading({super.key, required this.ScreenSize});

  final Size ScreenSize;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.only(
          top: ScreenSize.height / 10, bottom: ScreenSize.height / 15),
      width: ScreenSize.width,
      child: Text(
        'Knowledge diversity',
        textAlign: TextAlign.center,
        style: TextStyle(
            fontSize: 40,
            color: Color(0xFF077bd7),
            fontWeight: FontWeight.bold),
      ),
    );
  }
}
