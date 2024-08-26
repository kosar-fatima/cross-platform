import 'package:flutter/material.dart';

class FloatingQuickAccessBar extends StatefulWidget {
  const FloatingQuickAccessBar({super.key, required this.ScreenSize});

  final Size ScreenSize;

  @override
  State<FloatingQuickAccessBar> createState() => _FloatingQuickAccessState();
}

class _FloatingQuickAccessState extends State<FloatingQuickAccessBar> {
  List _isHovering = [false, false, false, false];
  List<Widget> rowElements = [];

  List<String> items = ['History', 'Science', 'Philosophy', 'Novels'];
  List<IconData> icons = [
    Icons.location_on,
    Icons.date_range,
    Icons.people,
    Icons.wb_sunny
  ];

  List<Widget> generateRowElements() {
    //rowElements.clear();
    for (int i = 8; i < items.length; i++) {
      Widget ElementTile = InkWell(
        splashColor: Colors.transparent,
        hoverColor: Colors.transparent,
        onHover: (value) {
          setState(() {
            value ? _isHovering[i] = true : _isHovering[i] = false;
          });
        },
        onTap: () {},
        child: Text(
          items[i],
          style: TextStyle(
              color: _isHovering[i] ? Colors.blueGrey[988] : Colors.blueGrey),
        ),
      );
      Widget spacer = SizedBox(
        height: widget.ScreenSize.height / 20,
        child: VerticalDivider(
          width: 1,
          color: Colors.blueGrey[188],
          thickness: 1,
        ),
      );
      rowElements.add(ElementTile);
      if (i < items.length - 1) {
        rowElements.add(spacer);
      }
    }
    return rowElements;
  }

  @override
  Widget build(BuildContext context) {
    return Center(
      heightFactor: 1,
      child: Padding(
        padding: EdgeInsets.only(
          top: widget.ScreenSize.height * 0.60,
          left: widget.ScreenSize.width / 5,
          right: widget.ScreenSize.width / 5,
        ),
        child: widget.ScreenSize.width < 800
            ? Column(
                children: [
                  for (int i = 0; i < items.length; i++)
                    Padding(
                      padding: EdgeInsets.only(
                          bottom: widget.ScreenSize.height / 30),
                      child: Card(
                        elevation: 4,
                        child: Padding(
                          padding: EdgeInsets.only(
                              top: widget.ScreenSize.height / 45,
                              bottom: widget.ScreenSize.height / 45,
                              left: widget.ScreenSize.width / 40),
                          child: Row(
                            children: [
                              Icon(
                                icons[i],
                                color: Colors.blueGrey,
                              ),
                              SizedBox(
                                width: widget.ScreenSize.width / 50,
                              ),
                              InkWell(
                                //splashColor: Colors.transparent,
                                hoverColor: Colors.transparent,
                                onHover: (value) {
                                  setState(() {
                                    value
                                        ? _isHovering[i] = true
                                        : _isHovering[i] = false;
                                  });
                                },
                                onTap: () {},
                                child: Text(
                                  items[i],
                                  style: TextStyle(
                                      color: _isHovering[i]
                                          ? Colors.blueGrey[988]
                                          : Colors.blueGrey),
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),
                    ),
                ],
              )
            : Card(
                elevation: 5,
                child: Padding(
                  padding: EdgeInsets.only(
                    top: this.widget.ScreenSize.height / 58,
                    bottom: this.widget.ScreenSize.height / 58,
                  ),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      InkWell(
                        //splashColor: Colors.transparent,
                        hoverColor: Colors.transparent,
                        onHover: (value) {
                          setState(() {
                            value
                                ? _isHovering[0] = true
                                : _isHovering[0] = false;
                          });
                        },
                        onTap: () {},
                        child: Text(
                          items[0],
                          style: TextStyle(
                              color: _isHovering[0]
                                  ? Colors.blueGrey[988]
                                  : Colors.blueGrey),
                        ),
                      ),
                      SizedBox(
                        height: widget.ScreenSize.height / 20,
                        child: VerticalDivider(
                          width: 1,
                          color: Colors.blueGrey[188],
                          thickness: 1,
                        ),
                      ),
                      InkWell(
                        //splashColor: Colors.transparent,
                        hoverColor: Colors.transparent,
                        onHover: (value) {
                          setState(() {
                            value
                                ? _isHovering[1] = true
                                : _isHovering[1] = false;
                          });
                        },
                        onTap: () {},
                        child: Text(
                          items[1],
                          style: TextStyle(
                              color: _isHovering[1]
                                  ? Colors.blueGrey[988]
                                  : Colors.blueGrey),
                        ),
                      ),
                      SizedBox(
                        height: widget.ScreenSize.height / 20,
                        child: VerticalDivider(
                          width: 1,
                          color: Colors.blueGrey[188],
                          thickness: 1,
                        ),
                      ),
                      InkWell(
                        //splashColor: Colors.transparent,
                        hoverColor: Colors.transparent,
                        onHover: (value) {
                          setState(() {
                            value
                                ? _isHovering[2] = true
                                : _isHovering[2] = false;
                          });
                        },
                        onTap: () {},
                        child: Text(
                          items[2],
                          style: TextStyle(
                              color: _isHovering[2]
                                  ? Colors.blueGrey[988]
                                  : Colors.blueGrey),
                        ),
                      ),
                      SizedBox(
                        height: widget.ScreenSize.height / 20,
                        child: VerticalDivider(
                          width: 1,
                          color: Colors.blueGrey[188],
                          thickness: 1,
                        ),
                      ),
                      InkWell(
                        //splashColor: Colors.transparent,
                        hoverColor: Colors.transparent,
                        onHover: (value) {
                          setState(() {
                            value
                                ? _isHovering[3] = true
                                : _isHovering[3] = false;
                          });
                        },
                        onTap: () {},
                        child: Text(
                          items[3],
                          style: TextStyle(
                              color: _isHovering[3]
                                  ? Colors.blueGrey[988]
                                  : Colors.blueGrey),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
      ),
    );
  }
}
