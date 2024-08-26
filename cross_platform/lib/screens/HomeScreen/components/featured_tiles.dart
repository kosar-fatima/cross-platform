import 'package:flutter/material.dart';

class FeaturedTiles extends StatelessWidget {
  const FeaturedTiles({super.key, required this.ScreenSize});

  final Size ScreenSize;

  @override
  Widget build(BuildContext context) {
    final List<String> assets = [
      'assets/Images/test1.jpeg',
      'assets/Images/test2.jpeg',
      'assets/Images/test3.jpeg',
    ];

    final List<String> title = ['Sci-fi', 'Photography', 'Romance'];

    return ScreenSize.width < 800
        ? Padding(
            padding: EdgeInsets.only(top: ScreenSize.height / 50),
            child: SingleChildScrollView(
              scrollDirection: Axis.horizontal,
              child: Row(
                children: [
                  SizedBox(
                    width: ScreenSize.width / 15,
                  ),
                  ...Iterable<int>.generate(assets.length).map(
                    (int index) => Row(
                      children: [
                        Column(
                          children: [
                            SizedBox(
                              height: ScreenSize.width / 2.5,
                              width: ScreenSize.width / 1.5,
                              child: ClipRRect(
                                borderRadius: BorderRadius.circular(5.0),
                                child: Image.asset(
                                  assets[index],
                                  fit: BoxFit.cover,
                                ),
                              ),
                            ),
                            Padding(
                              padding:
                                  EdgeInsets.only(top: ScreenSize.height / 70),
                              child: Text(
                                title[index],
                                style: TextStyle(
                                    fontSize: 16, fontWeight: FontWeight.w500),
                              ),
                            ),
                          ],
                        ),
                        SizedBox(
                          width: ScreenSize.width / 15,
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
          )
        : Padding(
            padding: EdgeInsets.only(
              top: ScreenSize.height * 0.05,
              left: ScreenSize.width / 15,
              right: ScreenSize.width / 15,
            ),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                ...Iterable<int>.generate(assets.length).map(
                  (int index) => Column(
                    children: [
                      SizedBox(
                        height: ScreenSize.width / 6,
                        width: ScreenSize.width / 3.8,
                        child: Container(
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(20.0),
                            image: DecorationImage(
                                image: AssetImage(
                                  assets[index],
                                ),
                                fit: BoxFit.cover),
                            boxShadow: [
                              BoxShadow(
                                offset: Offset(0, 10),
                                blurRadius: 20,
                                spreadRadius: 5,
                                color: Colors.grey.withOpacity(0.3),
                              ),
                            ],
                          ),
                        ),
                      ),
                      Padding(
                        padding: EdgeInsets.only(
                          top: ScreenSize.height / 70,
                        ),
                        child: Text(
                          title[index],
                          style: TextStyle(
                              fontSize: 16, fontWeight: FontWeight.w500),
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          );
  }
}
