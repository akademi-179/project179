import 'package:project179/models/game.dart';
import 'package:project179/models/sponsor.dart';
import 'package:project179/models/team/team.dart';

class Notice {
  final String _noticeUserID;
  SponsorEntity? noticeOfSponsor;
  TeamEntity? noticeOfTeam;
  // GameEntity? noticeForGame;
  DateTime? noticeDueDate;
  String? noticeRole;
  Map<String, dynamic>?
      noticeRank; // Example: {badge: "gold", kda: 3.5, rank: 17850}
  String? noticeDescription;

  Notice(this._noticeUserID,
      [this.noticeOfSponsor,
      this.noticeOfTeam,
      // this.noticeForGame,
      this.noticeDueDate,
      this.noticeRole,
      this.noticeRank,
      this.noticeDescription]);

  String get noticeUserID => _noticeUserID;
}
