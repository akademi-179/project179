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
    return SafeArea(
      child: Scaffold(
        body: Column(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Column(
              children: const [
                Center(
                  child: Padding(
                    padding: EdgeInsets.all(20.0),
                    child: AppMenuRouteButtons(),
                  ),
                ),
              ],
            )
          ],
        ),
        floatingActionButton: FloatingActionButton(
          onPressed: () {},
          tooltip: "Click",
          child: const Icon(Icons.home_filled),
        ),
        floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
        bottomNavigationBar: BottomAppBar(
          shape: CircularNotchedRectangle(),
          color: Colors.blue,
          child: IconTheme(
            data: IconThemeData(color: Theme
                .of(context)
                .colorScheme
                .onPrimary),
            child: Row(
              children: [
                IconButton(
                  tooltip: 'Open navigation menu',
                  icon: const Icon(Icons.menu),
                  onPressed: () {},
                ),
                const Spacer(),
                IconButton(
                  tooltip: 'Search',
                  icon: const Icon(Icons.search),
                  onPressed: () {},
                ),
                IconButton(
                  tooltip: 'Favorite',
                  icon: const Icon(Icons.logout),
                  onPressed: () {
                    Navigator.pop(context);
                  },
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
