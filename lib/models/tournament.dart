import 'package:project179/models/sponsor.dart';
import 'package:project179/models/team/team.dart';

class Tournament {
  String tournamentGame;
  List<TeamEntity> tournamentTeams;
  List<SponsorEntity>? tournamentSponsors;
  DateTime? tournamentRegistrationDueDate;
  DateTime? tournamentStartDate;
  Map<dynamic, TeamEntity>? tournamentSchedule;
  Map<dynamic, dynamic>? tournamentStatistics;

  Tournament(this.tournamentTeams, this.tournamentGame,
      [this.tournamentSponsors,
      this.tournamentRegistrationDueDate,
      this.tournamentStartDate,
      this.tournamentSchedule,
      this.tournamentStatistics]);
}
