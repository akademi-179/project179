import 'package:flutter/material.dart';
import 'package:project179/main.dart';

AppBar yeniAppBar(BuildContext context) {
  return AppBar(
    title: Text("Profile Page"),
    leading: BackButton(),
    elevation: 0,
    backgroundColor: Colors.transparent,
    actions: [IconButton(onPressed: () {}, icon: Icon(Icons.star))],
  );
}
