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
  void onNavClick(int idx) {
    setState(() {
      selectedIconIndex = idx;
      debugPrint("Button Clicked.");
    });
  }
  
  @override
  Widget build(context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.end,
      children: [
        Container(
          color: selectedIconIndex == 0 ? selectedIconColor : null,
          height: 50,
          width: 50,
          margin: const EdgeInsets.all(20),
          child: TextButton(
            onPressed: () => onNavClick(0),
            child: SvgPicture.asset(
              'assets/images/heart-regular.svg',
              color: Colors.white,
            ),
          ),
        ),
        Container(
          height: 50,
          width: 50,
          color: selectedIconIndex == 1 ? selectedIconColor : null,
          margin: const EdgeInsets.all(20),
          child: TextButton(
            onPressed: () => onNavClick(1),
            child: SvgPicture.asset(
              'assets/images/drum-solid.svg',
              color: Colors.white,
            ),
          ),
        ),
        Container(
          height: 50,
          width: 50,
          color: selectedIconIndex == 2 ? selectedIconColor : null,
          margin: const EdgeInsets.all(20),
          child: TextButton(
            onPressed: () => onNavClick(2),
            child: SvgPicture.asset(
              'assets/images/message-regular.svg',
              color: Colors.white,
            ),
          ),
        ),
        Container(
          height: 50,
          width: 50,
          color: selectedIconIndex == 3 ? selectedIconColor : null,
          margin: const EdgeInsets.all(20),
          child: TextButton(
            onPressed: () => onNavClick(3),
            child: SvgPicture.asset(
              'assets/images/user-regular.svg',
              color: Colors.white,
            ),
          ),
        ),
      ],
    );
  }
}
