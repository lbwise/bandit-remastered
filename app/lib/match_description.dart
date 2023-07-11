import 'package:flutter/material.dart';

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
        return Container(
            color: const Color(0xFF8A8A8A),
            // decoration: BoxDecoration(
            //     border: Border.all(color: Colors.white)
            // ),
            child: const Text('Testing'),
        );
    }
}