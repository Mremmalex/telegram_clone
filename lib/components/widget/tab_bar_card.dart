import 'package:flutter/material.dart';
import 'package:telegram/utils/theme.dart';

class TabBarCard extends StatelessWidget {
  final String title;
  bool active;
  TabBarCard({Key? key, required this.title, this.active = false})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 100,
      decoration: BoxDecoration(
          color: active ? primaryColor : Colors.transparent,
          borderRadius: const BorderRadius.all(Radius.circular(15))),
      child: Center(
        child: Text(
          title,
          style: TextStyle(
              fontWeight: FontWeight.bold,
              color: active ? Colors.white : Colors.black),
        ),
      ),
    );
  }
}
