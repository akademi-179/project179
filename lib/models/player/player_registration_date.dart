import 'package:project179/models/sponsor.dart';
import 'package:project179/models/team/team.dart';

class PlayerRegistrationDate {
  final String _playerID;
  final DateTime appRegistrationDate;
  List<Map<TeamEntity, DateTime>>?
      teamRegistrationDate; // Consist of registration and resignation
  List<Map<SponsorEntity, DateTime>>?
      sponsorRegistrationDate; // Consist of registration and resignation

  PlayerRegistrationDate(this.appRegistrationDate, this._playerID,
      [this.teamRegistrationDate, this.sponsorRegistrationDate]);

  String get playerID => _playerID;
}
