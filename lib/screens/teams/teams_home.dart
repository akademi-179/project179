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
      appBar: AppBar(
        title: Text("Teams Home"),
      ),
      body: Column(
        children: [
          Center(
            child: Padding(
              padding: const EdgeInsets.all(20.0),
              child: Text("Show team dashboard if member of any team"),
            ),
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Padding(
                padding: const EdgeInsets.all(5.0),
                child: ElevatedButton(
                  onPressed: () {
                    Navigator.pushNamed(context, '/teams/my_teams');
                  },
                  child: Text("My teams"),
                  style: ElevatedButton.styleFrom(fixedSize: Size(150, 40)),
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(5.0),
                child: ElevatedButton(
                  onPressed: () {
                    Navigator.pushNamed(context, '/teams/find_team');
                  },
                  child: Text("Find Team"),
                  style: ElevatedButton.styleFrom(fixedSize: Size(200, 40)),
                ),
              )
            ],
          ),

        ],
      ),
    );
  }
}
