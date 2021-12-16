import 'package:flutter/material.dart';

class Texto extends StatelessWidget {
  final String texto;
  final Color color;

  const Texto({Key? key, required this.texto, required this.color,})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Text(
      texto,
      style: TextStyle(
        fontWeight: FontWeight.bold,
        fontSize: 17,
        color: color,
      ),
    );
  }
}
