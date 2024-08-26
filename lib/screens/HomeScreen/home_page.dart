import 'package:cross_platform/screens/HomeScreen/components/top_bar_content.dart';
import 'package:flutter/material.dart';

import 'components/bottom_bar.dart';
import 'components/featured_heading.dart';
import 'components/featured_tiles.dart';
import 'components/floating_quick_access.dart';
import 'components/main_carousel.dart';
import 'components/main_heading.dart';
import 'components/menu_drawer.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  final ScrollController _scrollController = ScrollController();
  double _scrollPosition = 0;
  double _opacity = 0;

  void _scrollListener() {
    setState(() {
      _scrollPosition = _scrollController.position.pixels;
    });
  }

  @override
  void initState() {
    _scrollController.addListener(_scrollListener);
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    final ScreenSize = MediaQuery.of(context).size;

    final double _opacity = _scrollPosition < ScreenSize.height * 0.40
        ? _scrollPosition / (ScreenSize.height * 0.40)
        : 1;

    return Scaffold(
      appBar: ScreenSize.width < 800
          ? AppBar(
              iconTheme: IconThemeData(
                color: Color(0xFF077bd7),
              ),
              elevation: 0,
              backgroundColor: Colors.white.withOpacity(_opacity),
              title: Text(
                'Author',
                style: TextStyle(
                    fontSize: 26,
                    color: Color(0xFF077bd7),
                    fontWeight: FontWeight.w900,
                    letterSpacing: 3),
              ),
            )
          : PreferredSize(
              child: TopBarContents(opacity: _opacity),
              preferredSize: Size(ScreenSize.width, 70),
            ),
      drawer: MenuDrawer(),
      body: SingleChildScrollView(
        controller: _scrollController,
        child: Column(
          children: [
            Stack(
              children: [
                Container(
                  height: ScreenSize.height * 0.65,
                  width: ScreenSize.width,
                  child: Image.asset(
                    'assets/Images/background.png',
                    fit: BoxFit.cover,
                  ),
                ),
                Column(
                  children: [
                    FloatingQuickAccessBar(ScreenSize: ScreenSize),
                    FeaturedHeading(ScreenSize: ScreenSize),
                    FeaturedTiles(ScreenSize: ScreenSize),
                    MainHeading(ScreenSize: ScreenSize),
                    MainCarousel(ScreenSize: ScreenSize),
                    SizedBox(
                      height: ScreenSize.height / 10,
                    ),
                    BottomBar(),
                  ],
                )
              ],
            ),
          ],
        ),
      ),
    );
  }
}
