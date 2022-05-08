import 'package:project179/models/player/player_achievement.dart';
import 'package:project179/models/player/player_interest.dart';
import 'package:project179/models/player/player_registration_date.dart';
import 'package:project179/models/player/player_statistic.dart';
import 'package:project179/models/tournament.dart';

class PlayerEntity {
  // TODO: Specify character limit name, nickname, surname,about
  String _playerName; // Name can be changed
  String _playerNickname; // Nickname can be changed if not taken
  String _playerSurname; // Surname can be changed
  String? _playerAbout; // About can be changed
  String?
      _playerProfilePictureUrl; // optional: Image.network(url) // CAREFUL ABOUT CORS ERROR
  String?
      _playerProfileBannerUrl; // optional: Image.network(url) // CAREFUL ABOUT CORS ERROR
  List<PlayerStatistic>?
      _playerStatistics; // Statistics can be updated, will be retrieved from APIs
  List<PlayerInterest>?
      _playerInterests; // Interests can be updated, player can edit interests in
  // three types: Teams, Sponsors, Games
  List<PlayerAchievement>? _playerAchievements; // Achievements can be updated,
  // past victories, MVP, ranks,
  List<PlayerRegistrationDate>?
      _playerRegistrationDates; // When is player registered to app, team, sponsor
  List<Tournament>?
      _playerAttendeeOfTournaments; // List of tournaments that the player attended/attending
  List<String>? _playerRoles;

  /// Constructor
  PlayerEntity(this._playerName, this._playerSurname, this._playerNickname,
      [this._playerAbout,
      this._playerProfilePictureUrl,
      this._playerProfileBannerUrl,
      this._playerStatistics,
      this._playerInterests,
      this._playerRegistrationDates,
      this._playerAchievements,
      this._playerAttendeeOfTournaments,
      this._playerRoles]);

  /// Getter and Setters
  List<PlayerRegistrationDate>? get playerRegistrationDates =>
      _playerRegistrationDates;

  set setPlayerRegistrationDates(final List<PlayerRegistrationDate>? value) {
    _playerRegistrationDates = value;
  }

  List<PlayerInterest>? get playerInterests => _playerInterests;

  set setPlayerInterests(final List<PlayerInterest>? value) {
    _playerInterests = value;
  }

  List<PlayerStatistic>? get playerStatistics => _playerStatistics;

  set setPlayerStatistics(List<PlayerStatistic>? value) {
    _playerStatistics = value;
  }

  String? get playerProfileBannerUrl => _playerProfileBannerUrl;

  set setPlayerProfileBannerUrl(final String? value) {
    _playerProfileBannerUrl = value;
  }

  String? get playerProfilePictureUrl => _playerProfilePictureUrl;

  set setPlayerProfilePictureUrl(final String? value) {
    _playerProfilePictureUrl = value;
  }

  String? get playerAbout => _playerAbout;

  set setPlayerAbout(final String? value) {
    _playerAbout = value;
  }

  String get playerNickname => _playerNickname;

  set setPlayerNickname(final String value) {
    _playerNickname = value;
  }

  String get playerSurname => _playerSurname;

  set setPlayerSurname(final String value) {
    _playerSurname = value;
  }

  String get playerName => _playerName;

  set setPlayerName(final String value) {
    _playerName = value;
  }

  List<PlayerAchievement>? get playerAchievements => _playerAchievements;

  set setPlayerAchievements(final List<PlayerAchievement> value) {
    _playerAchievements = value;
  }

  List<Tournament>? get playerAttendeeOfTournaments =>
      _playerAttendeeOfTournaments;

  set playerAttendeeOfTournaments(List<Tournament>? value) {
    _playerAttendeeOfTournaments = value;
  }

  List<String>? get playerRoles => _playerRoles;

  set playerRoles(List<String>? value) {
    _playerRoles = value;
  }
}
