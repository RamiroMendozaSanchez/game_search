import 'package:flutter/material.dart';

class ImageAppBar extends StatelessWidget {
  final String asset_name;

  const ImageAppBar({
    Key? key,
    required this.asset_name,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: Image.asset(
        asset_name,
        height: 30,
        width: 30,
      ),
    );
  }
}
