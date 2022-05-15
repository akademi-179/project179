import 'package:project179/main.dart';
import 'package:project179/models/player/player.dart';
import 'package:shared_preferences/shared_preferences.dart';

// class UserPreferences {
//   static var myPlayer = PlayerEntity(
//       _playerName: alper,
//       _playerSurname: acar,
//       _playerNickname: agacar);
// }

class UserPreferences {
  static const myPlayer = TestUser(
      imagePath: 'https://avatars.githubusercontent.com/u/73676363?v=4',
      name: 'Alper Acar',
      email: 'algokceacar@gmail.com',
      about:
          'Amatör bir oyuncu Bu bölümde saçmalamak serbest çünkü görselliği test ediyoruz. O yüzden çok da lorem ipsumluk bir durum var desek yeridir.',
      nickname: 'agacar');
}
