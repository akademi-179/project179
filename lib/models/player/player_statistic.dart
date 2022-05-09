import 'package:project179/models/player/player.dart';

class PlayerStatistic {
  // TODO: Create an extensive model for playerstat, (Ex: Some apis doesn't provide most preferred lanes)
  // TODO: API/Game decisions will have high impact on this class
  /// Game Statistics
  final String _playerID;
  Map<String, int>? killDeathAssists;
  double? kdaRatio;
  int? totalHours;
  String? favoriteWeapon;
  int? kill;
  int? death;
  int? assists;
  String? favoriteLane; // KDA is also valid
  int? laneFarm;
  int? laneGold;
  String? favoriteRole; // KDA is also valid
  int? totalMVP;
  int? totalMatch;

  /// Stream Statistics
  int? totalViews;
  int? totalStreamHours;
  int? maxViewers;
  List<PlayerEntity>? totalSubscribers;

  PlayerStatistic(this._playerID,
      [this.killDeathAssists,
      this.kdaRatio,
      this.totalHours,
      this.favoriteWeapon,
      this.kill,
      this.death,
      this.assists,
      this.favoriteLane,
      this.laneFarm,
      this.laneGold,
      this.favoriteRole,
      this.totalMVP,
      this.totalViews,
      this.totalStreamHours,
      this.maxViewers,
      this.totalSubscribers,
      this.totalMatch]);

  String get playerID => _playerID;
}
