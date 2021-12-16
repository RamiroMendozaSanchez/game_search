import 'package:flutter/material.dart';

import '../widgets/button_list_view.dart';

class ListViewTypes extends StatelessWidget {

  const ListViewTypes({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    //final allScreen = MediaQuery.of(context).size;
    final List<String> entries = ['Shooter', 'MMMPX', 'MMOR','Battle'];
    return ListView.builder(
        padding: const EdgeInsets.only(left: 10),
        scrollDirection: Axis.horizontal,
        itemCount: entries.length,
        itemBuilder: ( _ , index) {
          return ButtonListView(
            color_button: const Color.fromRGBO(196, 196, 196, 1),
            button_text: entries[index],
            color_letter: const Color.fromRGBO(8, 35, 47, 1),
            function: (){},
          );
        }
    );
  }
}
