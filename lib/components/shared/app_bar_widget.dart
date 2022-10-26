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
            children: [
              InkWell(
                onTap: addPressed,
                child: const Icon(
                  Icons.add,
                  color: primaryColor,
                ),
              ),
              const SizedBox(
                width: 10,
              ),
              InkWell(
                onTap: searchPressed,
                child: const Icon(
                  Icons.search,
                  color: primaryColor,
                ),
              ),
              const SizedBox(
                width: 20,
              ),
              InkWell(
                onTap: menuPressed,
                child: const Icon(
                  Icons.menu_open,
                  color: primaryColor,
                ),
              ),
            ],
          )
        ],
      ),
    );
  }
}
