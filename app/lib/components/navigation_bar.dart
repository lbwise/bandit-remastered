import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class NavBar extends StatefulWidget {
  const NavBar(this.updateCurrPage, {super.key});
  final void Function(int) updateCurrPage;
  @override
  State<NavBar> createState() {
    return _NavBarState();
  }
}

class _NavBarState extends State<NavBar> {
  static const selectedIconColor = Color.fromARGB(100, 101, 99, 99);
  var selectedIconIndex = 1;

  get decoration => null;
  void onNavClick(int idx) {
    setState(() {
      selectedIconIndex = idx;
      widget.updateCurrPage(idx);
    });
  }

  @override
  Widget build(context) {
    return Expanded(
      child: LayoutBuilder(
        builder: (context, constraints) {
          return Padding(
            padding: const EdgeInsets.only(bottom: 8, left: 8, right: 8),
            child: Align(
              alignment: Alignment.bottomCenter,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  Container(
                    decoration: BoxDecoration(
                        color: const Color.fromARGB(85, 75, 75, 75),
                        border: Border.all(
                          color: const Color.fromARGB(85, 75, 75, 75),
                        ),
                        borderRadius:
                            const BorderRadius.all(Radius.circular(50))),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Container(
                          color:
                              selectedIconIndex == 0 ? selectedIconColor : null,
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
                          color:
                              selectedIconIndex == 1 ? selectedIconColor : null,
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
                          color:
                              selectedIconIndex == 2 ? selectedIconColor : null,
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
                          color:
                              selectedIconIndex == 3 ? selectedIconColor : null,
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
          );
        },
      ),
    );
  }
}
