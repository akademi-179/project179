import 'package:project179/models/post.dart';

class SponsorEntity {
  String _sponsorName;
  final String _sponsorID;
  Map<dynamic, dynamic>? _sponsorNotices;
  List<PostEntity>? sponsorPosts;
  String? _sponsorLogoUrl;
  String? _sponsorBannerUrl;
  String? _sponsorDescription;

  /// Constructor
  SponsorEntity(this._sponsorID, this._sponsorName,
      [this._sponsorNotices,
      this.sponsorPosts,
      this._sponsorBannerUrl,
      this._sponsorDescription,
      this._sponsorLogoUrl]);

  /// Getter and Setters
  String? get sponsorDescription => _sponsorDescription;

  set sponsorDescription(String? value) {
    _sponsorDescription = value;
  }

  String? get sponsorBannerUrl => _sponsorBannerUrl;

  set sponsorBannerUrl(String? value) {
    _sponsorBannerUrl = value;
  }

  String? get sponsorLogoUrl => _sponsorLogoUrl;

  set sponsorLogoUrl(String? value) {
    _sponsorLogoUrl = value;
  }

  Map<dynamic, dynamic>? get sponsorNotices => _sponsorNotices;

  set sponsorNotices(Map<dynamic, dynamic>? value) {
    _sponsorNotices = value;
  }

  String get sponsorName => _sponsorName;

  set sponsorName(String value) {
    _sponsorName = value;
  }

  String get sponsorID => _sponsorID;
}
