import 'package:flutter/material.dart';

class User {
  String name;
  int age;
  String instrument;
  String seeking = 'band';
  int distance = 20;

  User(this.name, this.age, this.instrument);
}

class MatchDescription extends StatefulWidget {

    const MatchDescription({super.key});
    @override
    State<MatchDescription> createState() {
        return _MatchDescriptionState();
    }
}

class _MatchDescriptionState extends State<MatchDescription> {
    @override
    Widget build(context) {

      var user = User('Sam', 32, 'Guitarist');
      return Container(
        width: 345,
        color: const Color(0x338A8A8A),
        // decoration: BoxDecoration(
        //     border: Border.all(color: Colors.white)
        // ),
        child: Column(
          children: [
            Row(
              children: [
                Text('${user.name} ${user.age}'),
                Text(
                  user.instrument,
                  style: const TextStyle(fontWeight: FontWeight.bold),
                ),
              ]
            ),
            Row(
              children: [
                const Text('Looking for a '),
                Text(
                  user.seeking,
                  style: const TextStyle(fontWeight: FontWeight.bold),
                ),
              ]
            ),
            Row(
              children: [
                const Text('Within '),
                Text(
                  '${user.distance}km',
                  style: const TextStyle(fontWeight: FontWeight.bold),
                ),
                const Text(' of you'),
              ]
            ),
            const Row(
              children: [
                Text('Likes similar artists:'),
              ]
            ),
          ]
        )
      );
  }
}