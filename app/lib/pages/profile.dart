import 'package:flutter/material.dart';
import 'package:app/components/match_description.dart';
import 'package:app/components/profile_carousel.dart';


class Profile extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return const Column(
      children: [
        ProfileCarousel(),
        MatchDescription(),
      ], 
    );
  }
}