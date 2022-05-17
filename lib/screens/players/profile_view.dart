import 'dart:ui';
import 'package:flutter/material.dart';
import 'package:project179/models/player/player.dart';
import 'package:project179/utilities/user_preferences.dart';
import 'package:project179/widgets/appbar_widget.dart';
import 'package:project179/widgets/profile_widget.dart';
import 'package:project179/widgets/button_widget.dart';
import 'package:project179/widgets/stats_widget.dart';

class ProfileView extends StatefulWidget {
  const ProfileView({Key? key}) : super(key: key);

  @override
  State<ProfileView> createState() => _ProfileViewState();
}

class _ProfileViewState extends State<ProfileView> {
  @override
  Widget build(BuildContext context) {
    final player = UserPreferences.myPlayer;

    return Scaffold(
      appBar: yeniAppBar(context),
      body: ListView(
        physics: BouncingScrollPhysics(),
        children: [
          const SizedBox(height: 24),
          ProfileWidget(imagePath: player.imagePath, onClicked: () async {}),
          const SizedBox(height: 24),
          buildName(player)
        ],
      ),
    );
  }

  Widget buildName(TestUser player) => Column(
        children: [
          Text(
            player.nickname,
            style: TextStyle(fontWeight: FontWeight.bold, fontSize: 24),
          ),
          const SizedBox(height: 24),
          Text(
            player.name,
            style: TextStyle(fontWeight: FontWeight.bold, fontSize: 24),
          ),
          const SizedBox(height: 24),
          Text(
            player.email,
            style: TextStyle(color: Colors.grey),
          ),
          const SizedBox(height: 24),
          Center(child: buildFollowButton()),
          SizedBox(height: 24),
          StatsWidget(),
          SizedBox(height: 48),
          buildAbout(player),
        ],
      );

  Widget buildFollowButton() => ButtonWidget(
        buttonText: 'Takip Et',
        onClicked: () {},
      );

  Widget buildAbout(TestUser player) => Container(
        padding: EdgeInsets.symmetric(horizontal: 48),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              'Hakkında',
              style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
            ),
            const SizedBox(
              height: 16,
            ),
            Text(
              player.about,
              style: TextStyle(fontSize: 16, height: 1.4),
            )
          ],
        ),
      );
}
 



// Önceki halinin yedeği
// body: Column(
//        mainAxisAlignment: MainAxisAlignment.spaceBetween,
//        children: [
//          Center(
//            child: Padding(
//              padding: EdgeInsets.all(8.0),
//              child: Text("Profile View"),
//            ),
//          ),
//          ElevatedButton(onPressed: () {
//            Navigator.pushNamed(context, '/players/edit');
//          }, child: Text("Edit Profile"))
//       ],
//      )
