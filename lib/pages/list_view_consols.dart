import 'package:flutter/material.dart';
import 'package:game_search/bloc/get_games_platform.dart';
import 'package:game_search/pages/list_view_games.dart';
import 'package:game_search/widgets/card_game.dart';
import 'package:provider/provider.dart';

import '../widgets/button_list_view.dart';

class ListViewConsols extends StatelessWidget {
  const ListViewConsols({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    //final allScreen = MediaQuery.of(context).size;
    final List<String> entries = ['Browser', 'PC', 'All'];
    return ListView.builder(
        scrollDirection: Axis.horizontal,
        itemCount: entries.length,
        itemBuilder: (_, index) {
          return MultiProvider(
            providers: [
              Provider<GetGamePlatform>(
                create: (_) {
                  final bloc_platform = GetGamePlatform();
                  bloc_platform.getGamesPlatform(platform: entries[index]);
                  return bloc_platform;
                },
              ),
            ],
            child: ButtonListView(
              color_button: const Color.fromRGBO(8, 35, 47, 1),
              button_text: entries[index],
              color_letter: Colors.white,
              function: () {
                var platform_provider =
                    Provider.of<GetGamePlatform>(context, listen: false);
                return StreamBuilder(
                  stream: platform_provider.stream,
                  builder: (_, snapshot) {
                    final data = snapshot.data;
                    if (data == null) {
                      return CircularProgressIndicator();
                    } else {
                      return ListViewGames();
                    }
                  },
                );
              },
            ),
          );
        });
  }
}
