import 'package:project179/models/sponsor.dart';
import 'package:project179/models/team/team.dart';

class PlayerRegistrationDate {
  final DateTime appRegistrationDate;
  Map<TeamEntity, DateTime>?
      teamRegistrationDate; // Consist of registration and resignation
  Map<SponsorEntity, DateTime>?
      sponsorRegistrationDate; // Consist of registration and resignation

  PlayerRegistrationDate(this.appRegistrationDate,
      [this.teamRegistrationDate, this.sponsorRegistrationDate]);
}
