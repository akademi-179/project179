import 'package:flutter/material.dart';

class ProfileCreate extends StatefulWidget {
  const ProfileCreate({Key? key}) : super(key: key);

  @override
  State<ProfileCreate> createState() => _ProfileCreateState();
}

class _ProfileCreateState extends State<ProfileCreate> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Text("Will be visible only at first register, it may use 3-4-step-slides to create user players"),
      ),
    );
  }
}
