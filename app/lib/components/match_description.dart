import 'package:flutter/material.dart';
import 'package:app/models/user.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:app/pages/home.dart';

class MatchDescription extends StatefulWidget {
  const MatchDescription(this.user, {super.key});

  final User user;

  @override
  State<MatchDescription> createState() {
    return _MatchDescriptionState();
  }
}

class _MatchDescriptionState extends State<MatchDescription> {
  @override
  Widget build(context) {
    print(widget.user.name);
    return Container(
        width: 345,
        alignment: Alignment.center,
        margin: const EdgeInsets.only(top: 100),
        padding: const EdgeInsets.only(top: 20, bottom: 20, left: 10, right: 10),
        decoration: BoxDecoration(
            color: const Color.fromARGB(96, 39, 122, 60),
            border: Border.all(
              color: const Color.fromARGB(0, 39, 122, 60),
            ),
            borderRadius: const BorderRadius.all(Radius.circular(15))),
        child: Column(children: [
          Row(children: [
            Text('${widget.user.name} ${widget.user.age}'),
            Text(
              widget.user.instrument,
              style: const TextStyle(fontWeight: FontWeight.bold, color: Colors.amber),
            ),
          ]),
          Row(children: [
            const Text('Looking for a '),
            Text(
              widget.user.seeking,
              style: const TextStyle(fontWeight: FontWeight.bold, color: Colors.amber),
            ),
          ]),
          Row(children: [
            const Text('Within '),
            Text(
              '${widget.user.distance}km',
              style: const TextStyle(fontWeight: FontWeight.bold,  color: Colors.amber),
            ),
            const Text(' of you'),
          ]),
          const Row(children: [
            Text('Likes similar artists:'),
          ]),
        ]));
  }
}
