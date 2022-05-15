import 'package:flutter/material.dart';
import 'package:project179/widgets/games/games_screen_widgets.dart';
import 'package:project179/widgets/games/screenshot_slider.dart';

class Game extends StatefulWidget {
  const Game({Key? key, required this.game}) : super(key: key);
  final game;

  @override
  State<Game> createState() => _GameState();
}

class _GameState extends State<Game> {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
          child: Column(
        children: [
          GameScreenWidgets(widget.game).banner(context),
          GameScreenWidgets(widget.game).recentTournaments(context),
          ScreenshotSlider(game: widget.game),
          GameScreenWidgets(widget.game).gameInformation(context)
        ],
      )),
      floatingActionButton: FloatingActionButton(
        onPressed: () {},
        tooltip: "Click",
        child: const Icon(Icons.home_filled),
        backgroundColor: Colors.indigo,
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
      bottomNavigationBar: BottomAppBar(
        shape: const CircularNotchedRectangle(),
        color: Colors.indigo,
        child: IconTheme(
          data: IconThemeData(color: Theme.of(context).colorScheme.onPrimary),
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
    );
  }
}