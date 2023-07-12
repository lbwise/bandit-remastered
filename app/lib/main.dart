import 'package:flutter/material.dart';
import 'package:app/match_description.dart';
import 'package:app/navigation_bar.dart';
import 'package:app/profile_carousel.dart';

void main() {
  runApp(
    MaterialApp(
      home: Scaffold(
        body: Container(
          color: const Color(0XFF262626),
          child: const Column(
            children: [
              MatchDescription(),
              NavBar(),
              ProfileCarousel(),
            ],
          ),
        ),
      ),
    ),
  );
}
