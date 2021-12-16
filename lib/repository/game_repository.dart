import 'package:dio/dio.dart';
import 'package:game_search/models/game.dart';

class GameRepository {
  static String main_Url = 'https://www.freetogame.com/api/';
  final Dio _dio = Dio();

  Future<List<Game>> getGames() async {
    _dio.options.baseUrl = main_Url;
    return _dio.get('/games').then((value) => Game.toList(json: value.data));
  }

  Future<List<Game>> getGamesPlatform({required String platform}) async {
    _dio.options.baseUrl = main_Url;
    return _dio.get('/games?platform=$platform').then((value) => Game.toList(json: value.data));
  }

  // Future<GameResponse> getGamesForPlatform(String platform) async {
  //   var params = {
  //     'platform': platform,
  //   };
  //   try {
  //     Response response = await _dio.get(getGamesUrl, queryParameters: params);
  //     return GameResponse.fromJson(response.data);
  //   } catch (error, stacktrace) {
  //     print("Exception ocurred: $error stacktrace: $stacktrace");
  //     return GameResponse.withError("$error");
  //   }
  // }
  //
  // Future<GameResponse> getGamesForCategory(String category) async {
  //   var params = {
  //     'category': category,
  //   };
  //   try {
  //     Response response = await _dio.get(getGamesUrl, queryParameters: params);
  //     return GameResponse.fromJson(response.data);
  //   } catch (error, stacktrace) {
  //     print("Exception ocurred: $error stacktrace: $stacktrace");
  //     return GameResponse.withError("$error");
  //   }
  // }
}
