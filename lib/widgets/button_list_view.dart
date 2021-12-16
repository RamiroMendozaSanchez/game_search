import 'package:flutter/material.dart';

class ButtonListView extends StatelessWidget {
  final Color color_button;
  final Color color_letter;
  final String button_text;
  final Function() function;

  const ButtonListView({
    Key? key,
    required this.color_button,
    required this.button_text,
    required this.color_letter,
    required this.function,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(top:20,left: 10,right: 10,bottom: 20),
      child: MaterialButton(
        color: color_button,
        elevation: 6,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(30),
        ),
        child: Text(
          button_text,
          style: TextStyle(
            color: color_letter,
          ),
        ),
        onPressed: function,
      ),
    );
  }
}
