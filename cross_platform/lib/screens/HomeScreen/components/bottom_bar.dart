import 'package:flutter/material.dart';

import 'bottom_bar_column.dart';
import 'info_text.dart';

class BottomBar extends StatelessWidget {
  const BottomBar({super.key});

  static const Color gradientStartColor = Color(0xff11998e);
  static const Color gradientEndColor = Color(0xff0575E6);

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(8.0),
        gradient: LinearGradient(
          colors: [gradientStartColor, gradientEndColor],
          begin: FractionalOffset(0.2, 0.2),
          end: FractionalOffset(1.0, 1.0),
          stops: [0.0, 1.0],
          tileMode: TileMode.clamp,
        ),
      ),
      padding: EdgeInsets.all(30),
      child: Column(
        children: [
          MediaQuery.of(context).size.width < 800
              ? Column(
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        BottomBarColumn(
                            heading: 'ABOUT',
                            s1: 'Contact Us',
                            s2: 'About Us',
                            s3: 'Careers'),
                        BottomBarColumn(
                            heading: 'HELP',
                            s1: 'Payment',
                            s2: 'Cancellation',
                            s3: 'EAQ'),
                        BottomBarColumn(
                            heading: 'SOCIAL',
                            s1: 'Twitter',
                            s2: 'Facebook',
                            s3: 'YouTube'),
                        Divider(
                          color: Colors.white,
                        ),
                      ],
                    ),
                    Divider(
                      color: Colors.white,
                    ),
                    Padding(
                      padding: EdgeInsets.only(top: 10, bottom: 10),
                      child: Row(
                        children: [
                          Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              InfoText(type: 'Email', text: 'dylan@gmail.com'),
                              SizedBox(
                                height: 5,
                              ),
                              InfoText(
                                  type: 'Address',
                                  text: 'Right Bank Colony Tarbela'),
                            ],
                          ),
                        ],
                      ),
                    ),
                  ],
                )
              : Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    BottomBarColumn(
                        heading: 'ABOUT',
                        s1: 'Contact Us',
                        s2: 'About Us',
                        s3: 'Careers'),
                    BottomBarColumn(
                        heading: 'HELP',
                        s1: 'Payment',
                        s2: 'Cancellation',
                        s3: 'EAQ'),
                    BottomBarColumn(
                        heading: 'SOCIAL',
                        s1: 'Twitter',
                        s2: 'Facebook',
                        s3: 'YouTube'),
                    Container(
                      width: 2,
                      height: 150,
                      color: Colors.white,
                    ),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        InfoText(type: 'Email', text: 'dylan@gmail.com'),
                        SizedBox(
                          height: 5,
                        ),
                        InfoText(
                            type: 'Address', text: 'Right Bank Colony Tarbela'),
                      ],
                    ),
                  ],
                ),
          Divider(
            color: Colors.white,
          ),
          SizedBox(
            height: 20,
          ),
          Text(
            'Copyright @ 2021 | DBestech',
            style: TextStyle(
              color: Colors.white,
              fontSize: 14,
            ),
          ),
        ],
      ),
    );
  }
}
