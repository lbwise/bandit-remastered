import 'package:flutter/material.dart';
import 'package:app/components/match_description.dart';
import 'package:app/components/profile_carousel.dart';
//import 'package:open_file/open_file.dart';

class User {
  String name;
  int age;
  String instrument;
  String seeking = 'band';
  int distance = 20;

  User(this.name, this.age, this.instrument);
}

class Home extends StatelessWidget {
  @override
  Widget build(BuildContext context) {

    List<User> getDummyUsers() {
      List<User> users = [];
      // const data = OpenFile.open('../users.json');
      
      return users;
    }
    
    return const Column(
      children: [
        ProfileCarousel(),
        MatchDescription(),
      ], 
    );
  }
}