import 'package:project179/models/post.dart';

class GameEntity {
  // TODO: Specify character limit for name,description
  String _gameName;
  String? _gameDescription;
  DateTime? _gameReleaseDate;
  DateTime? _gameLastUpdateDate;
  String? _gameLogoUrl; // CAREFUL ABOUT CORS ERROR
  String? _gameBannerUrl; // CAREFUL ABOUT CORS ERROR
  List<PostEntity>? gamePosts;

  /// Constructor
  GameEntity(this._gameName,
      [this._gameDescription,
      this._gameReleaseDate,
      this._gameLastUpdateDate,
      this.gamePosts,
      this._gameBannerUrl,
      this._gameLogoUrl]);

  /// Getter and Setters
  DateTime? get gameLastUpdateDate => _gameLastUpdateDate;

  set gameLastUpdateDate(DateTime? value) {
    _gameLastUpdateDate = value;
  }

  DateTime? get gameReleaseDate => _gameReleaseDate;

  set gameReleaseDate(DateTime? value) {
    _gameReleaseDate = value;
  }

  String? get gameDescription => _gameDescription;

  set gameDescription(String? value) {
    _gameDescription = value;
  }

  String get gameName => _gameName;

  set gameName(String value) {
    _gameName = value;
  }

  String? get gameBannerUrl => _gameBannerUrl;

  set gameBannerUrl(String? value) {
    _gameBannerUrl = value;
  }

  String? get gameLogoUrl => _gameLogoUrl;

  set gameLogoUrl(String? value) {
    _gameLogoUrl = value;
  }
}
