import 'package:project179/models/notice.dart';
import 'package:project179/models/player/player.dart';
import 'package:project179/models/post.dart';
import 'package:project179/models/team/team_statistic.dart';
import 'package:project179/models/tournament.dart';

class TeamEntity {
  String _teamName;
  final String _teamID;
  List<TeamStatistic>? _teamStatistics;
  List<Tournament>? _teamHistory;
  List<Notice>? _teamNotices;
  List<PostEntity>? _teamPosts;
  Map<String, PlayerEntity>? _teamRolesAndMembers;
  String? _teamSponsor;
  String? _teamLogoUrl;
  String? _teamBannerUrl;

  /// Constructor
  TeamEntity(this._teamID, this._teamName,
      [this._teamStatistics,
      this._teamHistory,
      this._teamNotices,
      this._teamPosts,
      this._teamSponsor,
      this._teamLogoUrl,
      this._teamBannerUrl,
      this._teamRolesAndMembers]);

  /// Getter and Setters
  String? get teamBannerUrl => _teamBannerUrl;

  set teamBannerUrl(String? value) {
    _teamBannerUrl = value;
  }

  String? get teamLogoUrl => _teamLogoUrl;

  set teamLogoUrl(String? value) {
    _teamLogoUrl = value;
  }

  String? get teamSponsor => _teamSponsor;

  set teamSponsor(String? value) {
    _teamSponsor = value;
  }

  List<PostEntity>? get teamPosts => _teamPosts;

  set teamPosts(List<PostEntity>? value) {
    _teamPosts = value;
  }

  List<Notice>? get teamNotices => _teamNotices;

  set teamNotices(List<Notice>? value) {
    _teamNotices = value;
  }

  List<Tournament>? get teamHistory => _teamHistory;

  set teamHistory(List<Tournament>? value) {
    _teamHistory = value;
  }

  List<TeamStatistic>? get teamStatistics => _teamStatistics;

  set teamStatistics(List<TeamStatistic>? value) {
    _teamStatistics = value;
  }

  String get teamName => _teamName;

  set teamName(String value) {
    _teamName = value;
  }

  Map<String, PlayerEntity>? get teamMembers => _teamRolesAndMembers;

  set teamMembers(Map<String, PlayerEntity>? value) {
    _teamRolesAndMembers = value;
  }

  Map<String, PlayerEntity>? get teamRolesAndMembers => _teamRolesAndMembers;

  set teamRolesAndMembers(Map<String, PlayerEntity>? value) {
    _teamRolesAndMembers = value;
  }

  String get teamID => _teamID;
}
