import 'package:flutter/material.dart';
import 'package:app/components/match_description.dart';
import 'package:app/components/profile_carousel.dart';
import 'package:app/models/user.dart';
import 'package:http/http.dart' as http;
import 'dart:convert';

Future<List<User>> fetchUsers() async {
  List<User> usersFetched = [];
  final response = await http.get(Uri.parse('http://10.0.2.2:8080/users'));
  final data = jsonDecode(response.body);

  for (var userData in data['users']) {
    String name = userData['name'];
    int age = userData['age'];
    String artistType = userData['artist_type'];
    User userObj = User(name, age, artistType);
    usersFetched.add(userObj);
  }
  return usersFetched;
}

class Home extends StatefulWidget {
  const Home({super.key});

  @override
  State<Home> createState() => _HomeState();
}



class _HomeState extends State<Home> {
  late Future<List<User>> futureUsersData;

  void initState() {
    super.initState();
    futureUsersData = fetchUsers();
  }

  @override
  Widget build(BuildContext context) {
    var currentUserIndex = 0;

    void updateUserIndex(int increment) {
      setState(() {
        currentUserIndex += increment;            
        print('updating user: ${currentUserIndex}');
      });
    }
    return FutureBuilder<List<User>>(
        future: futureUsersData,
        builder: (context, snapshot) {
          
          List<User> users = snapshot.data!;

          return Column(children: [
            ProfileCarousel(users, currentUserIndex, updateUserIndex),
            MatchDescription(users[currentUserIndex]),
          ]);
        });
  }
}
