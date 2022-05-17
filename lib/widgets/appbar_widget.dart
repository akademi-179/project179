import 'package:flutter/material.dart';
import 'package:project179/main.dart';
import 'package:project179/screens/players/profile_edit.dart';

AppBar yeniAppBar(BuildContext context) {
  return AppBar(
    title: Text("Profil Sayfası"),
    leading: BackButton(),
    elevation: 0,
    actions: [
      IconButton(
        onPressed: () {
          Navigator.of(context)
              .push(MaterialPageRoute(builder: (context) => ProfileEdit()));
        },
        icon: Icon(Icons.edit),
      )
    ],
  );
}
