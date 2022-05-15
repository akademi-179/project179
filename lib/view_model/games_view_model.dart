import 'package:flutter/foundation.dart';
import '../models/game.dart';
import '../service/web_service.dart';

enum GameState { FULFILLED, PENDING, REJECTED}

class GameViewModel with ChangeNotifier{
  GameState? _state;
  List<Game> gameList = [];

  GameViewModel(){
    _state = GameState.FULFILLED;
    gameList = [];
    fetchGames();
  }

  GameState? get getState => _state;

  set setState(final GameState? value) {
    _state = value;
    notifyListeners();
  }

  Future<List<Game>> fetchGames() async{
    try{
      setState = GameState.PENDING;
      gameList = await WebService().fetchService();
      setState = GameState.FULFILLED;
      return gameList;
    } on Exception catch (e){
      print(e);
      setState = GameState.REJECTED;
    }
    return [];
  }
}