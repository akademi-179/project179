import 'package:flutter/material.dart';

class Tournaments extends StatefulWidget {
  const Tournaments({Key? key}) : super(key: key);

  @override
  State<Tournaments> createState() => _TournamentsState();
}

class _TournamentsState extends State<Tournaments> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Text("List of tournaments (attended/attending)"),
      ),
    );
  }
}
