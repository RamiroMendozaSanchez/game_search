import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:flutter/rendering.dart';

import 'package:game_search/bloc/get_games_bloc.dart';
import 'package:game_search/models/game.dart';
import 'package:game_search/pages/description_sheet.dart';
import 'package:game_search/widgets/card_game.dart';

class ListViewGames extends StatelessWidget {
  const ListViewGames({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    GamesListBloc bloc = Provider.of<GamesListBloc>(
      context,
      listen: false,
    );
    return StreamBuilder<List<Game>>(
      stream: bloc.stream,
      builder: (_, snapshot) {
        if (snapshot.data == null) {
          return CircularProgressIndicator();
        } else {
          final list = snapshot.data ?? [];
          return _buildHomeGames(data: list, context: context);
        }
      },
    );
  }

  Widget _buildHomeGames(
      {required List<Game> data, required BuildContext context}) {
    return ListView.builder(
      scrollDirection: Axis.horizontal,
      itemCount: data.length,
      itemBuilder: (_, index) {
        final games = data[index];
        return CardGame(
          url_image: games.thumbnail,
          name_game: games.title,
          Onclick: () => showModalBottomSheet(
            isScrollControlled: true,
            backgroundColor: Colors.transparent,
            context: context,
            builder: (context) => DescriptionSheet(
              thumbnail: games.thumbnail,
              descrption: games.short_description,
              genre: games.genre,
              platform: games.platform,
              publisher: games.publisher,
              developer: games.developer,
              release_date: games.release_date,
            ),
          ),
        );
      },
    );
  }
}
