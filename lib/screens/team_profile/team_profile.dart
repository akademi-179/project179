import 'package:flutter/material.dart';

class TeamProfile extends StatefulWidget {
  const TeamProfile({Key? key}) : super(key: key);

  @override
  State<TeamProfile> createState() => _TeamProfileState();
}

class _TeamProfileState extends State<TeamProfile> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Text("Team profile page"),
      ),
    );
  }
}
