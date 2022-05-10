import 'package:flutter/material.dart';

class FindTeam extends StatefulWidget {
  const FindTeam({Key? key}) : super(key: key);

  @override
  State<FindTeam> createState() => _FindTeamState();
}

class _FindTeamState extends State<FindTeam> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Find team"),
      ),
      body: Center(
        child: Text("Find your team"),
      ),
    );
  }
}
