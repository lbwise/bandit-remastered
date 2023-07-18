//import 'dart:html';

import 'package:flutter/material.dart';
import 'package:app/pages/home.dart';
import 'package:app/pages/profile.dart';
import 'package:app/pages/notifications.dart';
import 'package:app/pages/messages.dart';
import 'package:app/components/navigation_bar.dart';

  void main() {
    runApp(
      const MaterialApp(
        home: Scaffold(
          body: MainPage(),
        ),
      ),
    );
  }
  
class MainPage extends StatefulWidget {
  const MainPage({super.key});


  @override
  State<MainPage> createState() {
    return _MainPageState();
  }
}

class _MainPageState extends State<MainPage> {
  var pages = [
    Notifcations(),
    const Home(),
    Messages(),
    Profile(),
  ];
  var currPageIdx = 1;
  void updateCurrPage(newPageIdx) {
    setState(() {
      currPageIdx = newPageIdx;
    });
  }

  @override
  Widget build(context) {
    return Container(
      decoration: const BoxDecoration(
        gradient: RadialGradient(
          colors: [
            Color.fromARGB(218, 214, 11, 11),
            Color.fromARGB(255, 253, 124, 4),
            Color.fromARGB(244, 13, 51, 10),
          ],
          center: Alignment(0.4, 0.3),
          focal: Alignment(0.3, -0.1),
        ),
        image: DecorationImage(
          image: AssetImage('assets/noise_texture.jpg'),
          repeat: ImageRepeat.repeat,
          opacity: 0.1,
        ),
      ),
      child: Column(
        children: [
          pages[currPageIdx],
          NavBar(updateCurrPage),
        ],
      ),
    );
  }
}
