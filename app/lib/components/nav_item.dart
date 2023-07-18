import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class NavItem extends StatefulWidget {
  const NavItem(this.index, this.image, {super.key});

  final int index;
  final String image;

  @override
  State<NavItem> createState() {
    return _NavItemState();
  }
}

class _NavItemState extends State<NavItem> {
  static const selectedIconColor = Color.fromARGB(100, 101, 99, 99);
  
  @override
  Widget build(BuildContext context) {
    return Container(
      color:
         0 == widget.index ? selectedIconColor : null,
      height: 50,
      width: 50,
      margin: const EdgeInsets.all(20),
      child: TextButton(
        onPressed: () => print('testing'),
        child: SvgPicture.asset(
        'assets/icons/heart-regular.svg',
        color: Colors.white,
        ),
      ),
    );
  } 
}