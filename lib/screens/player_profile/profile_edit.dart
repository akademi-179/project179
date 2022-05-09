import 'package:flutter/material.dart';

class ProfileEdit extends StatefulWidget {
  const ProfileEdit({Key? key}) : super(key: key);

  @override
  State<ProfileEdit> createState() => _ProfileEditState();
}

class _ProfileEditState extends State<ProfileEdit> {
  @override
  Widget build(BuildContext context) {
    return WillPopScope(
      onWillPop: (() => _onBackPressed(context)) as Future<bool> Function(),
      child: Scaffold(
        appBar: AppBar(
          title: Text("Profile Edit"),
        ),
        body: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            Text("Screen for player_profile edit"),
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

Future<bool> _onBackPressed(BuildContext context) async {
  return (await showDialog(
      context: context,
      builder: (context) => AlertDialog(
            title: Text("AlertDialog"),
            content: Text("Do you wish to go back? You will lose all changes."),
            actions: [
              TextButton(
                  onPressed: () => Navigator.of(context).pop(true),
                  child: Text("Ok")),
              TextButton(
                  onPressed: () => Navigator.of(context).pop(false),
                  child: Text("Cancel"))
            ],
          )));
}