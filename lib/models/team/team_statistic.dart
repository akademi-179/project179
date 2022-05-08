import 'package:project179/models/player/player.dart';

class TeamStatistic {
  // TODO: Create an extensive model for teamstats, (Ex: Some apis doesn't provide assists whereas some does)
  int? teamTournamentWins;
  int? teamTournamentLoses;
  int? teamChampionships;
  int? totalTeamMemberMVP;
  int? totalMatches;
  int? totalTournaments;

  TeamStatistic(
      [this.teamTournamentWins,
      this.teamTournamentLoses,
      this.teamChampionships,
      this.totalTeamMemberMVP,
      this.totalMatches,
      this.totalTournaments]);
}
