import 'package:flutter/material.dart';
import 'package:carousel_slider/carousel_slider.dart';
import 'package:app/models/user.dart';

class ProfileCarousel extends StatefulWidget {
  const ProfileCarousel(this.users, this.currentUserIndex, this.updateUserIndex, {super.key});

  final int currentUserIndex;
  final void Function(int) updateUserIndex;
  final List<User> users;

  @override
  State<ProfileCarousel> createState() {
    return _ProfileCarouselState();
  }
}

class _ProfileCarouselState extends State<ProfileCarousel> {
  final urlImages = [
    'assets/profile_images/band-media.png',
    'assets/profile_images/guitar-media.png',
    'assets/profile_images/jose-pinto-MfdQgUjZP6M-unsplash.png',
    'assets/profile_images/lucia-macedo-d9_2kPJBG0U-unsplash.png',
    'assets/profile_images/singer-media.png',
    'assets/profile_images/violin-media.png',
  ];

  @override
  Widget build(context) {
    return Container(
      margin: const EdgeInsets.only(top: 60),
      child: CarouselSlider.builder(
        options: CarouselOptions(
          height: 400,
          initialPage: 0,
          enlargeCenterPage: true,
          ),
        itemCount: urlImages.length,
        itemBuilder: (context, index, realIndex) {
          final urlImage = urlImages[index];

          return Dismissible(
            key: Key(urlImage), 
            direction: DismissDirection.up,
            onDismissed: (direction) => {

              setState(() {
                widget.updateUserIndex(1);
                urlImages.removeAt(index);
              }),

              ScaffoldMessenger.of(context)
              .showSnackBar(const SnackBar(content: Text('Request sent')))
            },
            child:buildImage(urlImage, index),
          );
        },
      ),
    );
  }

  Widget buildImage(String urlImage, int index) => Container(
        margin: const EdgeInsets.symmetric(horizontal: 2),
        color: const Color(0XFF262626),
        child: Image.asset(
          urlImage,
          fit: BoxFit.cover,
        ),
      );
}
