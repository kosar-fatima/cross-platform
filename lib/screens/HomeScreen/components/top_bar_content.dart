import 'package:flutter/material.dart';

class TopBarContents extends StatefulWidget {
  const TopBarContents({super.key, required this.opacity});
  final double opacity;

  @override
  State<TopBarContents> createState() => _TopBarContentsState();
}

class _TopBarContentsState extends State<TopBarContents> {
  final List _isHovering = [
    false,
    false,
    false,
    false,
    false,
    false,
    false,
    false,
  ];
  @override
  Widget build(BuildContext context) {
    var ScreenSize = MediaQuery.of(context).size;
    // ignore: sort_child_properties_last
    return Container(
      color: Colors.white.withOpacity(widget.opacity),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Row(
            children: [
              SizedBox(
                width: ScreenSize.width / 4,
              ),
              Text(
                'Author',
                style: TextStyle(
                    fontSize: 26,
                    color: Color(0xFF077bd7),
                    fontWeight: FontWeight.w900,
                    letterSpacing: 3),
              ),
              SizedBox(
                width: ScreenSize.width / 15,
              ),
              InkWell(
                onHover: (value) {
                  setState(() {
                    value ? _isHovering[0] = true : _isHovering[0] = false;
                  });
                },
                onTap: () {},
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text(
                      'Home',
                      style: TextStyle(
                        color: _isHovering[0]
                            ? Color(0xFF051441)
                            : Color(0xFF077bd7),
                        fontSize: 18,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    Visibility(
                        maintainAnimation: true,
                        maintainState: true,
                        maintainSize: true,
                        visible: _isHovering[0],
                        child: Container(
                          height: 2,
                          width: 20,
                          color: Color(0xFF051441),
                        ))
                  ],
                ),
              ),
              SizedBox(
                width: ScreenSize.width / 15,
              ),
              InkWell(
                onHover: (value) {
                  setState(() {
                    value ? _isHovering[1] = true : _isHovering[1] = false;
                  });
                },
                onTap: () {},
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text(
                      'History',
                      style: TextStyle(
                        color: _isHovering[1]
                            ? Color(0xFF051441)
                            : Color(0xFF077bd7),
                        fontSize: 18,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    Visibility(
                        maintainAnimation: true,
                        maintainState: true,
                        maintainSize: true,
                        visible: _isHovering[1],
                        child: Container(
                          height: 2,
                          width: 20,
                          color: Color(0xFF051441),
                        ))
                  ],
                ),
              ),
              SizedBox(
                width: ScreenSize.width / 15,
              ),
              InkWell(
                onHover: (value) {
                  setState(() {
                    value ? _isHovering[2] = true : _isHovering[2] = false;
                  });
                },
                onTap: () {},
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text(
                      'About',
                      style: TextStyle(
                        color: _isHovering[2]
                            ? Color(0xFF051441)
                            : Color(0xFF077bd7),
                        fontSize: 18,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    Visibility(
                        maintainAnimation: true,
                        maintainState: true,
                        maintainSize: true,
                        visible: _isHovering[2],
                        child: Container(
                          height: 2,
                          width: 20,
                          color: Color(0xFF051441),
                        ))
                  ],
                ),
              ),
              SizedBox(
                width: ScreenSize.width / 15,
              ),
              InkWell(
                onHover: (value) {
                  setState(() {
                    value ? _isHovering[3] = true : _isHovering[3] = false;
                  });
                },
                onTap: () {},
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text(
                      'Contact',
                      style: TextStyle(
                        color: _isHovering[3]
                            ? Color(0xFF051441)
                            : Color(0xFF077bd7),
                        fontSize: 18,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    Visibility(
                        maintainAnimation: true,
                        maintainState: true,
                        maintainSize: true,
                        visible: _isHovering[3],
                        child: Container(
                          height: 2,
                          width: 20,
                          color: Color(0xFF051441),
                        ))
                  ],
                ),
              ),
            ],
          )
        ],
      ),
    );
  }
}
