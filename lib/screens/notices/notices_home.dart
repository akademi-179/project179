import 'package:flutter/material.dart';

class Notices extends StatefulWidget {
  const Notices({Key? key}) : super(key: key);

  @override
  State<Notices> createState() => _NoticesState();
}

class _NoticesState extends State<Notices> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Notices home"),
      ),
      body: ListView.builder(
          itemCount: 2,
          itemBuilder: (_, i) {
            return ListTile(
              title: Text("Notice $i"),
              onTap: () {
                print("Visit notice $i");
              },
            );
          }),
    );
  }
}
