import 'package:project179/models/game.dart';
import 'package:project179/models/sponsor.dart';
import 'package:project179/models/team/team.dart';

class Notice {
  SponsorEntity? noticeOfSponsor;
  TeamEntity? noticeOfTeam;
  GameEntity? noticeForGame;
  DateTime? noticeDueDate;
  String? noticeRole;
  Map<String, dynamic>? noticeRank;
  String? noticeDescription;

  Notice(
      [this.noticeOfSponsor,
      this.noticeOfTeam,
      this.noticeForGame,
      this.noticeDueDate,
      this.noticeRole,
      this.noticeRank,
      this.noticeDescription]);
}
