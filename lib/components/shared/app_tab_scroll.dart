import 'package:flutter/material.dart';

import '../widget/tab_bar_card.dart';

class AppTabScroll extends StatelessWidget {
  const AppTabScroll({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: 360,
      height: 40,
      child: ListView(
        scrollDirection: Axis.horizontal,
        children: [
          TabBarCard(
            title: "All",
          ),
          TabBarCard(title: "Important", active: true),
          TabBarCard(
            title: 'Unread',
          ),
          TabBarCard(title: "Unread"),
        ],
      ),
    );
  }
}
