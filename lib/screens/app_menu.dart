import 'package:flutter/material.dart';
import 'package:project179/widgets/app_menu/app_menu_route_buttons.dart';

class AppMenu extends StatefulWidget {
  const AppMenu({Key? key}) : super(key: key);

  @override
  State<AppMenu> createState() => _AppMenuState();
}

class _AppMenuState extends State<AppMenu> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("App Menu"),
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Column(
            children: [
              Center(
                child: Padding(
                  padding: EdgeInsets.all(20.0),
                  child: AppMenuRouteButtons(),
                ),
              ),
            ],
          ),
          ElevatedButton(
              onPressed: () {
                Navigator.pop(context);
              },
              child: const Text("Logout"))
        ],
      ),
    );
  }
}
