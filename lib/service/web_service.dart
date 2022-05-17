import 'dart:convert';
import 'package:http/http.dart' as http;
import 'package:project179/auth/secrets.dart';
import 'package:project179/utilities/application_constants.dart';
import '../models/game.dart';

class WebService {
  Future<List<Game>> fetchService() async {
    final auth = await http.post(Secrets.authUrl);
    final responseBody = jsonDecode(auth.body);

    final queryResponse = await http.post(ApplicationConstants.IGDBGamesUrl,
        headers: {
          "Client-ID": "${Secrets.IGDBAuth["client_id"]}",
          "Authorization": "Bearer ${responseBody["access_token"]}",
        },
        body: "fields id,category,cover.url,first_release_date,game_modes.name,genres.name,involved_companies.*, involved_companies.company.name,name,platforms.name,platforms.platform_logo.url,player_perspectives.name,rating,release_dates.platform.name,release_dates.human,screenshots.url,summary,artworks.url; where id=(2963, 126459, 1372,115, 1905);");
    if (auth.statusCode == 200) {
      return gameFromJson(queryResponse.body);
    }
    return [];
  }
}
