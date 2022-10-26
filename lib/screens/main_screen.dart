import 'package:flutter/material.dart';
import 'package:flutter_slidable/flutter_slidable.dart';
import 'package:telegram/components/shared/app_bar_widget.dart';
import 'package:telegram/components/widget/tab_bar_card.dart';
import 'package:telegram/utils/data.dart';
import 'package:telegram/utils/theme.dart';

class MainScreen extends StatelessWidget {
  MainScreen({Key? key}) : super(key: key);
  bool active = false;
  final scaffoldKey = GlobalKey<ScaffoldState>();

  @override
  Widget build(BuildContext context) {
    final mediaQuery = MediaQuery.of(context).size;
    return Scaffold(
      key: scaffoldKey,
      endDrawer: Drawer(
        child: SafeArea(
          child: Column(
            children: [
              const SizedBox(
                height: 40,
              ),
              Padding(
                padding: const EdgeInsets.only(left: 20.0, right: 20.0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    InkWell(
                      onTap: () {},
                      child: const Icon(
                        Icons.arrow_forward_ios,
                        size: 19,
                        color: primaryColor,
                      ),
                    ),
                    InkWell(
                      onTap: () {},
                      child: const Icon(
                        Icons.settings_outlined,
                        size: 19,
                        color: primaryColor,
                      ),
                    )
                  ],
                ),
              ),
              const SizedBox(
                height: 20,
              ),
              Row(
                children: [
                  Padding(
                    padding: const EdgeInsets.only(left: 20.0),
                    child: Container(
                      width: 80,
                      height: 89,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(20),
                        image: const DecorationImage(
                          image: AssetImage("assets/users/user1.jpeg"),
                          fit: BoxFit.cover,
                        ),
                      ),
                    ),
                  ),
                  const Padding(
                    padding: EdgeInsets.only(left: 10.0),
                    child: SizedBox(
                      width: 90,
                      child: Text(
                        "Gloria Mckinney",
                        style: TextStyle(
                          color: primaryColor,
                          fontSize: 15,
                          letterSpacing: 2,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ),
                  )
                ],
              ),
              const SizedBox(
                height: 30,
              ),
              menuItem(
                icon: const Icon(
                  Icons.person_outline,
                  color: primaryColor,
                  size: 30,
                ),
                text: const Text(
                  "Contacts",
                  style: TextStyle(
                    color: primaryColor,
                    fontSize: 20,
                  ),
                ),
                onPressed: () {},
              ),
              menuItem(
                icon: const Icon(
                  Icons.call_end_outlined,
                  color: primaryColor,
                  size: 30,
                ),
                text: const Text(
                  "Calls",
                  style: TextStyle(
                    color: primaryColor,
                    fontSize: 20,
                  ),
                ),
                onPressed: () {},
              ),
              menuItem(
                icon: const Icon(
                  Icons.bookmark_add_outlined,
                  color: primaryColor,
                  size: 30,
                ),
                text: const Text(
                  "Saved Messages",
                  style: TextStyle(
                    color: primaryColor,
                    fontSize: 20,
                  ),
                ),
                onPressed: () {},
              ),
              menuItem(
                icon: const Icon(
                  Icons.person_add_outlined,
                  color: primaryColor,
                  size: 30,
                ),
                text: const Text(
                  "Invite Friends",
                  style: TextStyle(
                    color: primaryColor,
                    fontSize: 20,
                  ),
                ),
                onPressed: () {},
              ),
              menuItem(
                icon: const Icon(
                  Icons.question_mark_outlined,
                  color: primaryColor,
                  size: 30,
                ),
                text: const Text(
                  "Telegram FAQ",
                  style: TextStyle(
                    color: primaryColor,
                    fontSize: 20,
                  ),
                ),
                onPressed: () {},
              ),
            ],
          ),
        ),
      ),
      body: SafeArea(
        child: Column(
          children: [
            const SizedBox(
              height: 35,
            ),
            AppBarWidget(
              menuPressed: (() {
                scaffoldKey.currentState?.openEndDrawer();
              }),
            ),
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
              height: mediaQuery.height * 0.72,
              child: ListView.builder(
                itemCount: userData.length,
                itemBuilder: ((context, index) {
                  return SizedBox(
                    height: 90,
                    child: Slidable(
                      endActionPane: ActionPane(
                        motion: const ScrollMotion(),
                        children: [
                          SlidableAction(
                            onPressed: (BuildContext ctx) {},
                            backgroundColor: primaryColor,
                            foregroundColor: Colors.white,
                            icon: Icons.bookmark_outline,
                          ),
                          SlidableAction(
                            onPressed: (BuildContext ctx) {},
                            backgroundColor: primaryColor,
                            foregroundColor: Colors.white,
                            icon: Icons.done_all,
                          ),
                          SlidableAction(
                            onPressed: (BuildContext ctx) {},
                            backgroundColor: primaryColor,
                            foregroundColor: Colors.white,
                            icon: Icons.delete_outlined,
                          )
                        ],
                      ),
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
                                        userData[index].messageCount.bitLength >
                                                2
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

  Widget menuItem(
      {required Icon icon,
      required Text text,
      required VoidCallback onPressed}) {
    return GestureDetector(
      onTap: onPressed,
      child: Container(
        padding: const EdgeInsets.only(left: 20.0, right: 20.0, bottom: 35.0),
        child: Row(
          children: [
            icon,
            const SizedBox(
              width: 10,
            ),
            text,
          ],
        ),
      ),
    );
  }
}
