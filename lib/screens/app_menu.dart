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
              Center(
                child: Padding(
                  padding: EdgeInsets.fromLTRB(20.0, 0, 20, 0),
                  child: GestureDetector(
                    onTap: () {
                      Navigator.pushNamed(context, '/tournaments');
                    },
                    child: Container(
                      child: Center(
                        child: Text(
                          "Tournaments",
                          textAlign: TextAlign.center,
                          style: const TextStyle(
                              fontSize: 20.0, fontWeight: FontWeight.bold),
                        ),
                      ),
                      width: 330,
                      height: 120,
                      decoration: BoxDecoration(
                          border: Border.all(color: Colors.blue, width: 3),
                          borderRadius:
                              const BorderRadius.all(Radius.circular(20)),
                          image: DecorationImage(
                              image: NetworkImage(
                                  "https://cdn.pixabay.com/photo/2020/12/15/16/06/win-5834110_960_720.png"),
                              fit: BoxFit.cover,
                              opacity: 0.5)),
                    ),
                  ),
                ),
              )
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
