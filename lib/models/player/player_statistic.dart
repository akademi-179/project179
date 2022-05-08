import 'package:project179/models/player/player.dart';

class PlayerStatistic {
  // TODO: Create an extensive model for playerstat, (Ex: Some apis doesn't provide most preferred lanes)
  // TODO: API/Game decisions will have high impact on this class
  /// Game Statistics
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

  /// Stream Statistics
  int? totalViews;
  int? totalStreamHours;
  int? maxViewers;
  List<PlayerEntity>? totalSubscribers;


}
