import 'dart:ui';

import 'package:date_format/date_format.dart';
import 'package:flutter/material.dart';
import 'package:project179/models/game.dart';
import 'package:project179/screens/games/games.dart';

class GameScreenWidgets {
  final Game game;

  GameScreenWidgets(this.game);

  /// Banner
  Widget banner(final BuildContext context) {
    return Stack(
      children: [
        Padding(
          padding: EdgeInsets.symmetric(vertical: 60),
          child: buildLoadingWidget(),
        ),
        Container(
          child: Container(
            color: Colors.black26,
            child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Column(
                    children: [
                      const SizedBox(
                        height: 40,
                      ),
                      Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Center(
                            child: Text(
                          game.name,
                          style: TextStyle(fontSize: 30, color: Colors.white),
                        )),
                      ),
                      Padding(
                        padding: const EdgeInsets.symmetric(vertical: 10.0),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: game.platforms
                              .map<Widget>((final item) => platforms(
                                  context, item.platformLogo.url, item.name))
                              .toList(),
                        ),
                      ),
                    ],
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.end,
                    children: [
                      Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Text(
                          game.involvedCompanies
                              .firstWhere(
                                  (final company) => company.developer && true)
                              .company
                              .name,
                          style: TextStyle(
                            color: Colors.grey[50],
                          ),
                        ),
                      )
                    ],
                  )
                ]),
          ),
          width: double.infinity,
          height: 220,
          decoration: BoxDecoration(
              image: DecorationImage(
            image: NetworkImage(
                "https:${game.artworks[0].url.replaceFirst("t_thumb", "t_screenshot_huge")}"),
            alignment: Alignment.topCenter,
            fit: BoxFit.cover,
          )),
        )
      ],
    );
  }

  /// Banner/Platforms
  Widget platforms(
      final BuildContext context, final String logoUrl, final String name) {
    return SizedBox(
      width: 25,
      child: Image.network("https:${logoUrl}", fit: BoxFit.contain),
    );
  }

  /// Tournaments
  Widget recentTournaments(final BuildContext context) {
    return Container(
      color: Colors.indigo,
      width: MediaQuery.of(context).size.width,
      child: Column(
        children: [
          Padding(
            padding: const EdgeInsets.all(16.0),
            child: Card(
              elevation: 5,
              color: Colors.indigo[400],
              child: Padding(
                padding: const EdgeInsets.all(8.0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [
                    Column(
                      children: const [
                        Text("Tournament Name"),
                        Text("Tournament Logo(Image)"),
                      ],
                    ),
                    Card(
                      color: Colors.blue[50],
                      child: Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Column(
                          children: const [
                            Text("Date"),
                            Text("Tournament Location"),
                          ],
                        ),
                      ),
                    )
                  ],
                ),
              ),
            ),
          ),
          GestureDetector(
            onTap: () {
              print("Go to ${game.name} tournaments");
            },
            child: Container(
              margin: EdgeInsets.only(bottom: 16),
              width: 30,
              height: 30,
              decoration: const BoxDecoration(
                shape: BoxShape.circle,
                color: Colors.blue,
              ),
              child: const Icon(
                Icons.chevron_right_rounded,
                color: Colors.white,
                size: 30,
              ),
            ),
          )
        ],
      ),
    );
  }

  /// TODO: Finish game information
  Widget gameInformation(final BuildContext context) {
    final String date = formatDate(
        DateTime.fromMillisecondsSinceEpoch(game.firstReleaseDate * 1000),
        [MM, " ", dd, ", ", yyyy]);

    return Padding(
      padding: const EdgeInsets.all(16.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Padding(
            padding: const EdgeInsets.only(top: 10.0),
            child: RichText(
              text: TextSpan(
                  style: const TextStyle(color: Colors.indigo, fontSize: 24),
                  children: [
                    TextSpan(
                        text: game.name,
                        style: const TextStyle(fontWeight: FontWeight.bold)),
                    TextSpan(
                      text: " ${date.substring(date.length-4,date.length)} - ${game.genres.map((e) => e.name).join("/")}",
                      style: const TextStyle(fontSize: 16)
                    )
                  ]),
            ),
          ),
          Text(
            game.gameModes.map((e) => e.name).join(", "),
            style: TextStyle(color: Colors.grey[600]),
          ),
          Padding(
            padding: const EdgeInsets.symmetric(vertical: 8.0),
            child: RichText(
                text: TextSpan(
                    style: const TextStyle(
                        color: Colors.black,
                        fontFamily: "SanFrancisco",
                        fontSize: 16),
                    children: [
                  const TextSpan(
                      text: "Involved Companies: ",
                      style: TextStyle(fontWeight: FontWeight.bold)),
                  TextSpan(
                      text: game.involvedCompanies
                          .map((final company) => company.company.name)
                          .join(", "))
                ])),
          ),
          Divider(),
          Text(game.summary,
              style: const TextStyle(
                  color: Colors.black,
                  fontFamily: "SanFrancisco",
                  fontSize: 16)),
          const SizedBox(
            height: 40,
            width: 500,
          )
        ],
      ),
    );
  }
}
