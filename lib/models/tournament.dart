import 'package:project179/models/sponsor.dart';
import 'package:project179/models/team/team.dart';

class Tournament {
  String tournamentGame;
  final String _tournamentID;
  String? tournamentPrize;
  List<TeamEntity> tournamentTeams;
  List<SponsorEntity>? tournamentSponsors;
  DateTime? tournamentRegistrationDueDate;
  DateTime? tournamentStartDate;
  Map<dynamic, TeamEntity>? tournamentSchedule;
  Map<dynamic, dynamic>? tournamentStatistics;

  Tournament(this._tournamentID, this.tournamentTeams, this.tournamentGame,
      this.tournamentPrize,
      [this.tournamentSponsors,
      this.tournamentRegistrationDueDate,
      this.tournamentStartDate,
      this.tournamentSchedule,
      this.tournamentStatistics]);

  String get tournamentID => _tournamentID;
}
