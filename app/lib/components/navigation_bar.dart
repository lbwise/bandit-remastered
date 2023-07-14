import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class NavBar extends StatefulWidget {
  const NavBar({super.key});

  @override
  State<NavBar> createState() {
    return _NavBarState();
  }
}

class _NavBarState extends State<NavBar> {
  static const selectedIconColor = Color(0xFF656363);
  var selectedIconIndex = 1;

  get decoration => null;
  void onNavClick(int idx) {
    setState(() {
      selectedIconIndex = idx;
      debugPrint("Button Clicked.");
    });
  }

  @override
  Widget build(context) {
    return Expanded(
      child: LayoutBuilder(
        builder: (context, constraints) {
          final availableHeight = constraints.maxHeight;
          return Padding(
            padding: const EdgeInsets.only(bottom: 12, left: 8, right: 8),
            child: Container(
              constraints: const BoxConstraints(maxHeight: 80),
              height: availableHeight,
              child: Align(
                alignment: Alignment.bottomCenter,
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: [
                    Container(
                      decoration: BoxDecoration(
                          color: const Color(0xFF4B4B4B),
                          border: Border.all(
                            color: const Color(0xFF4B4B4B),
                          ),
                          borderRadius:
                              const BorderRadius.all(Radius.circular(50))),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Container(
                            color: selectedIconIndex == 0
                                ? selectedIconColor
                                : null,
                            height: 50,
                            width: 50,
                            margin: const EdgeInsets.all(20),
                            child: TextButton(
                              onPressed: () => onNavClick(0),
                              child: SvgPicture.asset(
                                'assets/icons/heart-regular.svg',
                                color: Colors.white,
                              ),
                            ),
                          ),
                          Container(
                            height: 50,
                            width: 50,
                            color: selectedIconIndex == 1
                                ? selectedIconColor
                                : null,
                            margin: const EdgeInsets.all(20),
                            child: TextButton(
                              onPressed: () => onNavClick(1),
                              child: SvgPicture.asset(
                                'assets/icons/drum-solid.svg',
                                color: Colors.white,
                              ),
                            ),
                          ),
                          Container(
                            height: 50,
                            width: 50,
                            color: selectedIconIndex == 2
                                ? selectedIconColor
                                : null,
                            margin: const EdgeInsets.all(20),
                            child: TextButton(
                              onPressed: () => onNavClick(2),
                              child: SvgPicture.asset(
                                'assets/icons/message-regular.svg',
                                color: Colors.white,
                              ),
                            ),
                          ),
                          Container(
                            height: 50,
                            width: 50,
                            color: selectedIconIndex == 3
                                ? selectedIconColor
                                : null,
                            margin: const EdgeInsets.all(20),
                            child: TextButton(
                              onPressed: () => onNavClick(3),
                              child: SvgPicture.asset(
                                'assets/icons/user-regular.svg',
                                color: Colors.white,
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
            ),
          );
        },
      ),
    );
  }
}
