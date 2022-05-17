import 'package:date_format/date_format.dart';
import 'package:flutter/material.dart';
import 'package:project179/models/game.dart';
import 'package:project179/screens/games/games.dart';

class GameItem extends StatefulWidget {
  const GameItem({final Key? key, required this.game, required this.loadingWidget}) : super(key: key);
  final Game game;
  final Widget loadingWidget;

  @override
  State<GameItem> createState() => _GameItemState();
}

class _GameItemState extends State<GameItem> {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 4.0),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Stack(
            children: [
              Padding(padding: EdgeInsets.all(30), child: buildLoadingWidget(),),
              Container(
                alignment: Alignment.bottomCenter,
                width: 110,
                height: 160,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(8),
                  image: DecorationImage(
                    image: NetworkImage(
                        "https:${widget.game.cover.url.replaceFirst("t_thumb", "t_cover_big")}"),
                    fit: BoxFit.cover,
                  ),
                ),
              ),
            ]
          ),
          Expanded(
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 8.0),
              child: DefaultTextStyle(
                style: const TextStyle(
                    color: Colors.black87,
                    letterSpacing: 0.4,
                    fontSize: 16,
                    overflow: TextOverflow.fade),
                child: SizedBox(
                  height: 150,
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    crossAxisAlignment: CrossAxisAlignment.end,
                    children: [
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Padding(
                            padding: const EdgeInsets.symmetric(vertical: 4),
                            child: Text(
                              widget.game.name,
                              style: const TextStyle(
                                fontSize: 24,
                                fontWeight: FontWeight.w900,
                                color: Colors.indigo,
                              ),
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsets.only(bottom: 10.0),
                            child: Text(
                                "by ${widget.game.involvedCompanies.firstWhere((final company) => company.developer && true).company.name}"),
                          ),
                          Text(
                            widget.game.summary.substring(0, 60),
                            softWrap: false,
                            style: const TextStyle(
                                fontSize: 18, overflow: TextOverflow.ellipsis),
                          ),
                        ],
                      ),
                      Text(
                          formatDate(
                              DateTime.fromMillisecondsSinceEpoch(
                                  widget.game.firstReleaseDate * 1000),
                              [MM, " ", dd, ", ", yyyy]),
                          style: TextStyle(color: Colors.grey[850]))
                    ],
                  ),
                ),
              ),
            ),
          )
        ],
      ),
    );
  }
}
