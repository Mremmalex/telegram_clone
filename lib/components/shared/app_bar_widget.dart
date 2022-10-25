import 'package:flutter/material.dart';
import 'package:telegram/utils/theme.dart';

class AppBarWidget extends StatelessWidget {
  VoidCallback? addPressed;
  VoidCallback? searchPressed;
  VoidCallback? menuPressed;

  AppBarWidget(
      {Key? key, this.addPressed, this.menuPressed, this.searchPressed})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Row(
        children: [
          const SizedBox(
            width: 20,
          ),
          const Text(
            "Telegram",
            style: TextStyle(
                color: primaryColor, fontWeight: FontWeight.bold, fontSize: 20),
          ),
          const SizedBox(
            width: 180,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: const [
              Icon(
                Icons.add,
                color: primaryColor,
              ),
              SizedBox(
                width: 10,
              ),
              Icon(
                Icons.search,
                color: primaryColor,
              ),
              SizedBox(
                width: 20,
              ),
              Icon(
                Icons.menu_open,
                color: primaryColor,
              ),
            ],
          )
        ],
      ),
    );
  }
}
