import 'package:flutter/material.dart';

class FeaturedHeading extends StatelessWidget {
  const FeaturedHeading({super.key, required this.ScreenSize});

  final Size ScreenSize;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(
          //top: ScreenSize.height * 0.86,
          left: ScreenSize.height / 15,
          right: ScreenSize.height / 15),
      child: ScreenSize.width < 800
          ? Row(
              children: [
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      'Featured',
                      style: TextStyle(
                        fontSize: 36,
                        fontWeight: FontWeight.bold,
                        color: Color(0xFF077bd7),
                      ),
                    ),
                    SizedBox(
                      height: 5,
                    ),
                    Text(
                      'Clue of the wooden cottage',
                      textAlign: TextAlign.end,
                      style: TextStyle(
                        color: Color(0xFF077bd7),
                      ),
                    ),
                  ],
                ),
              ],
            )
          : Row(
              children: [
                Text(
                  'Featured',
                  style: TextStyle(
                    fontSize: 36,
                    fontWeight: FontWeight.bold,
                    color: Color(0xFF077bd7),
                  ),
                ),
                Expanded(
                  child: Text(
                    'Clue of the wooden cottage',
                    textAlign: TextAlign.end,
                    style: TextStyle(
                      color: Color(0xFF077bd7),
                    ),
                  ),
                ),
              ],
            ),
    );
  }
}
