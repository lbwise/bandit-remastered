import 'package:flutter/material.dart';
import 'package:app/pages/home.dart';
import 'package:app/pages/profile.dart';
import 'package:app/pages/notifications.dart';
import 'package:app/pages/messages.dart';
import 'package:app/components/navigation_bar.dart';
import 'package:app/components/gradient_container.dart';

void main() {
  var pages = [
    Home(),
    Profile(),
    Notifcations(),
    Messages(),
  ];

  var currPageIdx = 0;

  // void updateCurrPage(newPageIdx) {
  //   setState(() {
  //     currPageIdx = newPageIdx;
  //   });
  // }

  runApp(
    MaterialApp(
      home: Scaffold(
        body: Container(
          child: Column(children: [
            Container(
              child: pages[currPageIdx],
            ),
            const NavBar(),
          ]),
        ),
      ),
    ),
  );
}
