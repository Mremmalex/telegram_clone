import 'package:flutter/material.dart';
import 'package:telegram/components/shared/app_bar_widget.dart';
import 'package:telegram/components/widget/tab_bar_card.dart';
import 'package:telegram/utils/data.dart';
import 'package:telegram/utils/theme.dart';

class MainScreen extends StatelessWidget {
  MainScreen({Key? key}) : super(key: key);
  bool active = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Column(
          children: [
            const SizedBox(
              height: 35,
            ),
            AppBarWidget(),
            const SizedBox(
              height: 30,
            ),
            SizedBox(
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
            ),
            const SizedBox(
              height: 30,
            ),
            SizedBox(
              height: 650,
              child: ListView.builder(
                itemCount: userData.length,
                itemBuilder: ((context, index) {
                  return SizedBox(
                    height: 90,
                    child: ListTile(
                      leading: Container(
                        width: 70,
                        height: 89,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(20),
                          image: DecorationImage(
                            image: AssetImage(userData[index].image),
                            fit: BoxFit.cover,
                          ),
                        ),
                      ),
                      title: Text(userData[index].name),
                      subtitle: Text(
                        userData[index].message,
                        style: TextStyle(
                          color: userData[index].sentBy == "user"
                              ? primaryColor
                              : Colors.grey,
                        ),
                      ),
                      trailing: Column(
                        children: [
                          Text('${userData[index].time}'),
                          const SizedBox(
                            height: 5,
                          ),
                          userData[index].sentBy == "user"
                              ? Container(
                                  width:
                                      userData[index].messageCount.bitLength > 2
                                          ? 30
                                          : 20,
                                  height: 20,
                                  decoration: BoxDecoration(
                                    color: primaryColor,
                                    borderRadius: BorderRadius.circular(10),
                                  ),
                                  child: Center(
                                    child: Text(
                                      "${userData[index].messageCount}",
                                      style: const TextStyle(
                                        color: Colors.white,
                                      ),
                                    ),
                                  ),
                                )
                              : Container(
                                  width: 20,
                                  height: 20,
                                  child: Icon(
                                    Icons.done_all_outlined,
                                    color: userData[index].seen
                                        ? primaryColor
                                        : Colors.grey,
                                  ),
                                ),
                        ],
                      ),
                    ),
                  );
                }),
              ),
            )
          ],
        ),
      ),
    );
  }
}
