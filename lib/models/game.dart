import 'dart:convert';

List<Game> gameFromJson(String str) => List<Game>.from(json.decode(str).map((x) => Game.fromJson(x)));

String gameToJson(List<Game> data) => json.encode(List<dynamic>.from(data.map((x) => x.toJson())));

class Game {
  Game({
    required this.id,
    required this.artworks,
    required this.category,
    required this.cover,
    required this.firstReleaseDate,
    required this.gameModes,
    required this.genres,
    required this.involvedCompanies,
    required this.name,
    required this.platforms,
    required this.playerPerspectives,
    required this.rating,
    required this.releaseDates,
    required this.screenshots,
    required this.summary,
  });

  int id;
  List<Cover> artworks;
  int category;
  Cover cover;
  int firstReleaseDate;
  List<GameMode> gameModes;
  List<GameMode> genres;
  List<InvolvedCompany> involvedCompanies;
  String name;
  List<Platform> platforms;
  List<GameMode> playerPerspectives;
  double rating;
  List<ReleaseDate> releaseDates;
  List<Cover> screenshots;
  String summary;

  factory Game.fromJson(Map<String, dynamic> json) => Game(
    id: json["id"],
    artworks: List<Cover>.from(json["artworks"].map((x) => Cover.fromJson(x))),
    category: json["category"],
    cover: Cover.fromJson(json["cover"]),
    firstReleaseDate: json["first_release_date"],
    gameModes: List<GameMode>.from(json["game_modes"].map((x) => GameMode.fromJson(x))),
    genres: List<GameMode>.from(json["genres"].map((x) => GameMode.fromJson(x))),
    involvedCompanies: List<InvolvedCompany>.from(json["involved_companies"].map((x) => InvolvedCompany.fromJson(x))),
    name: json["name"],
    platforms: List<Platform>.from(json["platforms"].map((x) => Platform.fromJson(x))),
    playerPerspectives: List<GameMode>.from(json["player_perspectives"].map((x) => GameMode.fromJson(x))),
    rating: json["rating"].toDouble(),
    releaseDates: List<ReleaseDate>.from(json["release_dates"].map((x) => ReleaseDate.fromJson(x))),
    screenshots: List<Cover>.from(json["screenshots"].map((x) => Cover.fromJson(x))),
    summary: json["summary"],
  );

  Map<String, dynamic> toJson() => {
    "id": id,
    "artworks": List<dynamic>.from(artworks.map((x) => x.toJson())),
    "category": category,
    "cover": cover.toJson(),
    "first_release_date": firstReleaseDate,
    "game_modes": List<dynamic>.from(gameModes.map((x) => x.toJson())),
    "genres": List<dynamic>.from(genres.map((x) => x.toJson())),
    "involved_companies": List<dynamic>.from(involvedCompanies.map((x) => x.toJson())),
    "name": name,
    "platforms": List<dynamic>.from(platforms.map((x) => x.toJson())),
    "player_perspectives": List<dynamic>.from(playerPerspectives.map((x) => x.toJson())),
    "rating": rating,
    "release_dates": List<dynamic>.from(releaseDates.map((x) => x.toJson())),
    "screenshots": List<dynamic>.from(screenshots.map((x) => x.toJson())),
    "summary": summary,
  };
}

class Cover {
  Cover({
    required this.id,
    required this.url,
  });

  int id;
  String url;

  factory Cover.fromJson(Map<String, dynamic> json) => Cover(
    id: json["id"],
    url: json["url"],
  );

  Map<String, dynamic> toJson() => {
    "id": id,
    "url": url,
  };
}

class GameMode {
  GameMode({
    required this.id,
    required this.name,
  });

  int id;
  String name;

  factory GameMode.fromJson(Map<String, dynamic> json) => GameMode(
    id: json["id"],
    name: json["name"],
  );

  Map<String, dynamic> toJson() => {
    "id": id,
    "name": name,
  };
}

class InvolvedCompany {
  InvolvedCompany({
    required this.id,
    required this.company,
    required this.createdAt,
    required this.developer,
    required this.game,
    required this.porting,
    required this.publisher,
    required this.supporting,
    required this.updatedAt,
    required this.checksum,
  });

  int id;
  GameMode company;
  int createdAt;
  bool developer;
  int game;
  bool porting;
  bool publisher;
  bool supporting;
  int updatedAt;
  String checksum;

  factory InvolvedCompany.fromJson(Map<String, dynamic> json) => InvolvedCompany(
    id: json["id"],
    company: GameMode.fromJson(json["company"]),
    createdAt: json["created_at"],
    developer: json["developer"],
    game: json["game"],
    porting: json["porting"],
    publisher: json["publisher"],
    supporting: json["supporting"],
    updatedAt: json["updated_at"],
    checksum: json["checksum"],
  );

  Map<String, dynamic> toJson() => {
    "id": id,
    "company": company.toJson(),
    "created_at": createdAt,
    "developer": developer,
    "game": game,
    "porting": porting,
    "publisher": publisher,
    "supporting": supporting,
    "updated_at": updatedAt,
    "checksum": checksum,
  };
}

class Platform {
  Platform({
    required this.id,
    required this.name,
    required this.platformLogo,
  });

  int id;
  String name;
  Cover platformLogo;

  factory Platform.fromJson(Map<String, dynamic> json) => Platform(
    id: json["id"],
    name: json["name"],
    platformLogo: Cover.fromJson(json["platform_logo"]),
  );

  Map<String, dynamic> toJson() => {
    "id": id,
    "name": name,
    "platform_logo": platformLogo.toJson(),
  };
}

class ReleaseDate {
  ReleaseDate({
    required this.id,
    required this.human,
    required this.platform,
  });

  int id;
  String human;
  GameMode platform;

  factory ReleaseDate.fromJson(Map<String, dynamic> json) => ReleaseDate(
    id: json["id"],
    human: json["human"],
    platform: GameMode.fromJson(json["platform"]),
  );

  Map<String, dynamic> toJson() => {
    "id": id,
    "human": human,
    "platform": platform.toJson(),
  };
}
