import 'package:flutter/material.dart';

class MyTeams extends StatefulWidget {
  const MyTeams({Key? key}) : super(key: key);

  @override
  State<MyTeams> createState() => _MyTeamsState();
}

class _MyTeamsState extends State<MyTeams> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("List of My Teams"),
      ),
      body: ListView.builder(
          itemCount: 3,
          itemBuilder: (_, i) {
            return ListTile(
              title: Text("Team ${i}"),
              onTap: () {
                print("Go team ${i}'s page");
              },
            );
          }),
    );
  }
}
