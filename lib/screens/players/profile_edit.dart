import 'package:flutter/material.dart';
import 'package:project179/widgets/Misc/on_back_pressed.dart';

class ProfileEdit extends StatefulWidget {
  const ProfileEdit({Key? key}) : super(key: key);

  @override
  State<ProfileEdit> createState() => _ProfileEditState();
}

class _ProfileEditState extends State<ProfileEdit> {
  @override
  Widget build(BuildContext context) {
    return WillPopScope(
      onWillPop: (() => OnBackPressed.onBackPressed(context, "title", "content", "cancel", "Ok")) as Future<bool> Function(),
      child: Scaffold(
        appBar: AppBar(
          title: Text("Profile Edit"),
        ),
        body: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            Text("Screen for players edit"),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: ElevatedButton(
                      onPressed: () {
                        Navigator.pop(context);
                      },
                      child: Text("Cancel")),
                ),
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: ElevatedButton(
                      onPressed: () {
                        print("Do some async task and pop");
                        Navigator.pop(context);
                      },
                      child: Text("Save Changes")),
                ),
              ],
            )
          ],
        ),
      ),
    );
  }
}