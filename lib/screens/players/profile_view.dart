import 'package:flutter/material.dart';

class ProfileView extends StatefulWidget {
  const ProfileView({Key? key}) : super(key: key);

  @override
  State<ProfileView> createState() => _ProfileViewState();
}

class _ProfileViewState extends State<ProfileView> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Profile"),
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Center(
            child: Padding(
              padding: EdgeInsets.all(8.0),
              child: Text("Profile View"),
            ),
          ),
          ElevatedButton(onPressed: () {
            Navigator.pushNamed(context, '/players/edit');
          }, child: Text("Edit Profile"))
        ],
      ),
    );
  }
}
