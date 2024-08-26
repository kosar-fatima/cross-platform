import 'package:flutter/material.dart';

class InfoText extends StatelessWidget {
  const InfoText({super.key, required this.type, required this.text});

  final String type;
  final String text;

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisSize: MainAxisSize.min,
      mainAxisAlignment: MainAxisAlignment.center,
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          '$type',
          style: TextStyle(fontSize: 16, color: Colors.white),
        ),
        Flexible(
          child: Text(
            text,
            style: TextStyle(fontSize: 16, color: Colors.white),
          ),
        ),
      ],
    );
  }
}
