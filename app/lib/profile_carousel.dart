import 'package:flutter/material.dart';
import 'package:carousel_slider/carousel_slider.dart';

class ProfileCarousel extends StatefulWidget {
  const ProfileCarousel({super.key});

  @override
  State<ProfileCarousel> createState() {
    return _ProfileCarouselState();
  }
}

class _ProfileCarouselState extends State<ProfileCarousel> {
  final urlImages = ['testImage1', 'testImage2', 'testImage3'];

  @override
  Widget build(context) {
    return Container(
      child: CarouselSlider.builder(
        options: CarouselOptions(height: 400),
        itemCount: urlImages.length,
        itemBuilder: (context, index, realIndex) {
          final urlImage = urlImages[index];

          return buildImage(urlImage, index);
        },
      ),
    );
  }

  Widget buildImage(String urlImage, int index) => Container(
        margin: const EdgeInsets.symmetric(horizontal: 12),
        color: Colors.pink,
      );
}
