import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:game_search/bloc/get_games_bloc.dart';
import 'package:game_search/bloc/get_games_platform.dart';
import 'package:game_search/pages/list_view_games.dart';
import 'package:game_search/pages/list_view_types.dart';
import 'package:game_search/pages/list_view_consols.dart';
import 'package:game_search/widgets/app_bar_custom.dart';
import 'package:provider/provider.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final allScreen = MediaQuery.of(context).size;
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        elevation: 10,
        toolbarHeight: 200,
        flexibleSpace: AppBarCustom(),
      ),
      body: MultiProvider(
        providers: [
          Provider<GamesListBloc> (
            create: (_){
              final bloc = GamesListBloc();
              bloc.getGames();
              return bloc;
            },
          ),
        ],
        child: SingleChildScrollView(
          child: Column(
            children: const [
              SizedBox(
                height: 70,
                child: ListViewConsols(),
              ),
              SizedBox(
                height: 500,
                child: ListViewGames(),
              ),
              SizedBox(
                height: 70,
                child: ListViewTypes(),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
