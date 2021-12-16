import 'package:flutter/material.dart';
import 'package:game_search/widgets/image_app_bar.dart';

class AppBarCustom extends StatelessWidget {
  const AppBarCustom({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: const BoxDecoration(
        color: Color.fromRGBO(8, 35, 47, 1),
        borderRadius: BorderRadius.only(
          bottomLeft: Radius.circular(40),
          bottomRight: Radius.circular(40),
        ),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          const Padding(
            padding: EdgeInsets.only(top: 100),
            child: Text(
              "Bienvenido a GameSearch",
              textAlign: TextAlign.center,
              style: TextStyle(
                color: Colors.white,
                fontSize: 20,
                fontWeight: FontWeight.bold,
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(left: 40, right: 40, top: 50),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.end,
              children: const [
                ImageAppBar(asset_name: 'images/xbox.png'),
                ImageAppBar(asset_name: 'images/ps.png'),
                ImageAppBar(asset_name: 'images/pc.png'),
                ImageAppBar(asset_name: 'images/nswitch.png'),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
