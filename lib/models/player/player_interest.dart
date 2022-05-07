import 'package:project179/models/game.dart';
import 'package:project179/models/player/player.dart';
import 'package:project179/models/sponsor.dart';
import 'package:project179/models/team/team.dart';

class PlayerInterest {
  List<PlayerEntity>? interestedPlayers;
  List<GameEntity?>? interestedGames;
  List<SponsorEntity>? interestedSponsors;
  List<TeamEntity>? interestedTeams;

  PlayerInterest(
      [this.interestedPlayers,
      this.interestedGames,
      this.interestedSponsors,
      this.interestedTeams]);
}
