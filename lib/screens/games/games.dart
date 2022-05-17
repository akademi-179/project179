import 'package:project179/screens/games/game.dart';
import 'package:project179/view_model/games_view_model.dart';
import 'package:project179/widgets/games/game_item.dart';
import 'package:provider/provider.dart';
import 'package:flutter/material.dart';

class Games extends StatefulWidget {
  const Games({Key? key}) : super(key: key);

  @override
  State<Games> createState() => _GamesState();
}

class _GamesState extends State<Games> {
    @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.indigo[50],
      body: context.watch<GameViewModel>().getState == GameState.PENDING
          ? buildLoadingWidget()
          : (context.watch<GameViewModel>().getState == GameState.REJECTED
              ? buildErrorWidget()
              : buildListView(context)),
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
    );
  }
}

Center buildErrorWidget() => Center(child: Text('Something went wrong!'));

Center buildLoadingWidget() => Center(child: CircularProgressIndicator());

ListView buildListView(BuildContext context) {
  return ListView.builder(
      itemCount: context.read<GameViewModel>().gameList.length,
      itemBuilder: (_, index) => buildListItem(context, index));
}

Widget buildListItem(BuildContext context, int index) {
  final game = context.read<GameViewModel>().gameList[index];
  return Card(
    color: Colors.indigo[50],
    elevation: 10,
    shape: RoundedRectangleBorder(
        side: const BorderSide(color: Colors.indigo),
        borderRadius: BorderRadius.circular(12)),
    margin: const EdgeInsets.symmetric(horizontal: 16, vertical: 8),
    child: ListTile(
      title: GameItem(
        game: game,
        loadingWidget: buildLoadingWidget(),
      ),
      contentPadding: const EdgeInsets.all(8),
      tileColor: Colors.transparent,
      onTap: () {
        Navigator.push(
          context,
          MaterialPageRoute(builder: (context) => Game(game: game,))
        );
      },
    ),
  );
}