import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class CardGame extends StatelessWidget {
  final String url_image;
  final String name_game;
  final Function() Onclick;

  const CardGame({
    Key? key,
    required this.url_image,
    required this.name_game,
    required this.Onclick,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      child: Padding(
        padding: const EdgeInsets.only(
          left: 5,
          right: 5,
        ),
        child: Stack(
          children: [
            Container(
              width: 350,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(30),
                image: DecorationImage(
                  image: NetworkImage(url_image),
                  fit: BoxFit.fitHeight,
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(
                left: 20,
                bottom: 40,
              ),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  Text(
                    name_game,
                    style: const TextStyle(
                      color: Colors.white,
                      fontWeight: FontWeight.bold,
                      fontSize: 30,
                    ),
                  )
                ],
              ),
            ),
          ],
        ),
      ),
      onTap: Onclick,
    );
  }
}
