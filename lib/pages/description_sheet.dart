import 'package:flutter/material.dart';
import 'package:game_search/widgets/text.dart';

class DescriptionSheet extends StatelessWidget {
  final String thumbnail;
  final String descrption;
  final String genre;
  final String platform;
  final String publisher;
  final String developer;
  final String release_date;

  const DescriptionSheet({
    Key? key,
    required this.thumbnail,
    required this.descrption,
    required this.genre,
    required this.platform,
    required this.publisher,
    required this.developer,
    required this.release_date,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return DraggableScrollableSheet(
      initialChildSize: 0.8,
      minChildSize: 0.5,
      maxChildSize: 0.8,
      builder: (_, controller) => Container(
        padding: const EdgeInsets.all(16),
        decoration: const BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.vertical(
            top: Radius.circular(30),
          ),
        ),
        child: ListView(
          controller: controller,
          children: [
            Column(
              children: [
                Container(
                  height: 1,
                  width: MediaQuery.of(context).size.width * 0.4,
                  decoration: BoxDecoration(
                    color: Colors.black87,
                    borderRadius: BorderRadius.circular(30),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(top: 20),
                  child: Container(
                    height: 200,
                    width: 300,
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(30),
                        image: DecorationImage(
                          image: NetworkImage(
                            thumbnail,
                          ),
                          fit: BoxFit.cover,
                        ),
                        boxShadow: [
                          BoxShadow(
                            color: Colors.grey.withOpacity(0.5),
                            spreadRadius: 2,
                            blurRadius: 5,
                            offset: Offset(0, 2),
                          )
                        ]),
                  ),
                ),
                Align(
                  alignment: Alignment.centerLeft,
                  child: Padding(
                    padding: const EdgeInsets.only(top: 20),
                    child: Column(
                      children: [
                        const Texto(
                          texto: 'Descripción',
                          color: Color.fromRGBO(8, 35, 47, 1),
                        ),
                        Texto(
                          texto: descrption,
                          color: Color.fromRGBO(121, 121, 121, 1),
                        ),
                        const SizedBox(
                          height: 15,
                        ),
                        const Texto(
                          texto: 'Genero',
                          color: Color.fromRGBO(8, 35, 47, 1),
                        ),
                        Texto(
                          texto: genre,
                          color: Color.fromRGBO(121, 121, 121, 1),
                        ),
                        const SizedBox(
                          height: 15,
                        ),
                        const Texto(
                          texto: 'Plataforma',
                          color: Color.fromRGBO(8, 35, 47, 1),
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Texto(
                              texto: platform,
                              color: Color.fromRGBO(121, 121, 121, 1),
                            ),
                            const SizedBox(
                              width: 20,
                            ),
                            Image.asset(
                              'images/pcn.png',
                              height: 30,
                              width: 30,
                            ),
                          ],
                        ),
                        const SizedBox(
                          height: 15,
                        ),
                        const Texto(
                          texto: 'Desarrolador',
                          color: Color.fromRGBO(8, 35, 47, 1),
                        ),
                        Texto(
                          texto: developer,
                          color: Color.fromRGBO(121, 121, 121, 1),
                        ),
                        const SizedBox(
                          height: 15,
                        ),
                        const Texto(
                          texto: 'Publicado por',
                          color: Color.fromRGBO(8, 35, 47, 1),
                        ),
                        Texto(
                          texto: publisher,
                          color: Color.fromRGBO(121, 121, 121, 1),
                        ),
                        const SizedBox(
                          height: 15,
                        ),
                        const Texto(
                          texto: 'Fecha de publicación',
                          color: Color.fromRGBO(8, 35, 47, 1),
                        ),
                        Texto(
                          texto: release_date ,
                          color: Color.fromRGBO(121, 121, 121, 1),
                        ),
                      ],
                    ),
                  ),
                )
              ],
            ),
          ],
        ),
      ),
    );
  }
}
