import 'package:flutter/material.dart';

class Sponsors extends StatefulWidget {
  const Sponsors({Key? key}) : super(key: key);

  @override
  State<Sponsors> createState() => _SponsorsState();
}

class _SponsorsState extends State<Sponsors> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Sponsors"),
      ),
      body: Center(
        child: Text("Sponsors"),
      ),
    );
  }
}
