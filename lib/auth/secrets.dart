class Secrets{
  // https://id.twitch.tv/oauth2/token?client_id=abcdefg12345&client_secret=hijklmn67890&grant_type=client_credentials
  static const IGDBAuth = {
    "client_id": "coe54zs4xnpt3mtr4uhed0q3v59hen",
    "client_secret": "u24rpz6onvf1dg47f2b3dord0mtv1g",
    "grant_type": "client_credentials"
  };
  static final authUrl = Uri.parse(
      "https://id.twitch.tv/oauth2/token?client_id=${Secrets.IGDBAuth['client_id']}&client_secret=${Secrets.IGDBAuth['client_secret']}&grant_type=client_credentials");

  Secrets();
  /// Base URL: https://api.igdb.com/v4
}
