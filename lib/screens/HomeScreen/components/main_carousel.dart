import 'package:carousel_slider/carousel_controller.dart';
import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';

class MainCarousel extends StatefulWidget {
  const MainCarousel({super.key, required this.ScreenSize});

  final Size ScreenSize;

  @override
  State<MainCarousel> createState() => _MainCarouselState();
}

class _MainCarouselState extends State<MainCarousel> {
  final String imagePath = 'assets/Images/';

  final CarouselController _controller = CarouselController();
  List _isHovering = [
    false,
    false,
    false,
    false,
    false,
    false,
    false,
  ];
  List _isSelected = [
    false,
    false,
    false,
    false,
    false,
    false,
    false,
  ];

  int current = 0;

  final List<String> images = [
    'assets/Images/asia.jpg',
    'assets/Images/africa.jpg',
    'assets/Images/europe.jpg',
    'assets/Images/south_america.jpg',
    'assets/Images/australia.jpg',
    'assets/Images/antarctica.jpg',
  ];

  final List<String> places = [
    'ASIA',
    'AFRICA',
    'EUROPE',
    'SOUTH AMERICA',
    'AUSTRALIA',
    'ANTARCTICA'
  ];

  List<Widget> generateImageTiles(Size ScreeSize) {
    return images
        .map((element) => ClipRRect(
              borderRadius: BorderRadius.circular(8.0),
              child: Image.asset(
                element,
                fit: BoxFit.cover,
              ),
            ))
        .toList();
  }

  @override
  Widget build(BuildContext context) {
    var imageSlider = generateImageTiles(widget.ScreenSize);

    return Stack(
      children: [
        CarouselSlider(
          items: imageSlider,
          options: CarouselOptions(
            enlargeCenterPage: true,
            aspectRatio: 18 / 8,
            autoPlay: true,
            onPageChanged: (index, reason) {
              setState(
                () {
                  current = index;
                  for (int i = 0; i < imageSlider.length; i++) {
                    if (index == i) {
                      _isSelected[i] = true;
                    } else {
                      _isSelected[i] = false;
                    }
                  }
                },
              );
            },
          ),
          carouselController: _controller,
        ),
        AspectRatio(
          aspectRatio: 18 / 8,
          child: Center(
            child: Text(
              places[current],
              style: TextStyle(
                  letterSpacing: 8,
                  fontSize: widget.ScreenSize.width / 25,
                  color: Colors.white),
            ),
          ),
        ),
        if (widget.ScreenSize.width > 800)
          AspectRatio(
            aspectRatio: 17 / 8,
            child: Center(
              child: Align(
                alignment: Alignment.bottomCenter,
                child: Padding(
                  padding: EdgeInsets.only(
                    left: widget.ScreenSize.width / 8,
                    right: widget.ScreenSize.width / 8,
                  ),
                  child: Card(
                    elevation: 5,
                    child: Padding(
                      padding: EdgeInsets.only(
                          top: widget.ScreenSize.height / 50,
                          bottom: widget.ScreenSize.height / 50),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: [
                          for (int i = 0; i < images.length; i++)
                            Column(
                              mainAxisSize: MainAxisSize.min,
                              children: [
                                InkWell(
                                  splashColor: Colors.transparent,
                                  hoverColor: Colors.transparent,
                                  onHover: (value) => setState(() {
                                    value
                                        ? _isHovering[i] = true
                                        : _isHovering[i] = false;
                                  }),
                                  onTap: () {
                                    _controller.animateToPage(i);
                                  },
                                  child: Padding(
                                    padding: EdgeInsets.only(
                                      top: widget.ScreenSize.height / 88,
                                      bottom: widget.ScreenSize.height / 98,
                                    ),
                                    child: Text(
                                      places[i],
                                      style: TextStyle(
                                          color: _isHovering[i]
                                              ? Colors.blueGrey[988]
                                              : Colors.blueGrey),
                                    ),
                                  ),
                                ),
                                Visibility(
                                  maintainState: true,
                                  maintainSize: true,
                                  maintainAnimation: true,
                                  visible: _isSelected[i],
                                  child: AnimatedOpacity(
                                    duration: Duration(milliseconds: 400),
                                    opacity: _isSelected[i] ? 1 : 0,
                                    child: Container(
                                      height: 5,
                                      decoration: BoxDecoration(
                                        color: Colors.blueGrey,
                                        borderRadius: BorderRadius.circular(18),
                                      ),
                                      width: widget.ScreenSize.width / 10,
                                    ),
                                  ),
                                ),
                              ],
                            )
                        ],
                      ),
                    ),
                  ),
                ),
              ),
            ),
          ),
      ],
    );
  }
}
