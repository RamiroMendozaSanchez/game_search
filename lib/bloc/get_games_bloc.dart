import 'package:game_search/models/game.dart';
import 'package:game_search/repository/game_repository.dart';
import 'package:rxdart/rxdart.dart';

class GamesListBloc{
  final  _repository = GameRepository();
  final _subject = BehaviorSubject<List<Game>>();

  Function(List<Game>) get _sink => _subject.sink.add;
  Stream <List<Game>> get stream => _subject.stream;

  getGames() async{
    List<Game> response = await _repository.getGames();
    if(isNoClosed()) _sink(response);
  }
  dispose(){
    _subject.close();
  }
  bool isNoClosed() => !_subject.isClosed;
}
