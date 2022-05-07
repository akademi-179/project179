import 'package:project179/models/post.dart';
import 'package:project179/models/team/team_achievement.dart';
import 'package:project179/models/team/team_history.dart';
import 'package:project179/models/team/team_notice.dart';
import 'package:project179/models/team/team_statistic.dart';

class TeamEntity {
  String _teamName;
  List<TeamStatistic>? _teamStatistics;
  List<TeamHistory>? _teamHistory;
  List<TeamAchievement>? _teamAchievements;
  List<TeamNotice>? _teamNotices;
  List<PostEntity>? _teamPosts;
  String? _teamSponsor;
  String? _teamLogoUrl;
  String? _teamBannerUrl;

  /// Constructor
  TeamEntity(this._teamName,
      [this._teamStatistics,
      this._teamHistory,
      this._teamAchievements,
      this._teamNotices,
      this._teamPosts,
      this._teamSponsor,
      this._teamLogoUrl,
      this._teamBannerUrl]);

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

  List<TeamNotice>? get teamNotices => _teamNotices;

  set teamNotices(List<TeamNotice>? value) {
    _teamNotices = value;
  }

  List<TeamAchievement>? get teamAchievements => _teamAchievements;

  set teamAchievements(List<TeamAchievement>? value) {
    _teamAchievements = value;
  }

  List<TeamHistory>? get teamHistory => _teamHistory;

  set teamHistory(List<TeamHistory>? value) {
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
}
