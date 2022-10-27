import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:telegram/models/chat_model.dart';
import 'package:telegram/models/user_model.dart';
import 'package:telegram/utils/theme.dart';

class ChatScreen extends StatelessWidget {
  static const routeName = "/chatScreen";

  const ChatScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final mediaQuery = MediaQuery.of(context).size;
    UserModel userData =
        ModalRoute.of(context)?.settings.arguments as UserModel;
    List<ChatModel> chats = userData.chats;
    return Scaffold(
      body: SafeArea(
        child: Column(
          children: [
            // Chat app bar design
            Container(
              padding: const EdgeInsets.only(left: 20.0, right: 20.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Row(
                    children: [
                      InkWell(
                        onTap: () {
                          Navigator.of(context).pop();
                        },
                        child: const Icon(
                          Icons.arrow_back_ios,
                          color: primaryColor,
                        ),
                      ),
                      const SizedBox(
                        width: 10,
                      ),
                      Container(
                        width: 60,
                        height: 60,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(20),
                          image: DecorationImage(
                            image: AssetImage(userData.image),
                            fit: BoxFit.cover,
                          ),
                        ),
                      ),
                      const SizedBox(
                        width: 10,
                      ),
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            userData.name,
                          ),
                          const SizedBox(
                            height: 2,
                          ),
                          const Text(
                            "Online",
                            style: TextStyle(
                              color: primaryColor,
                            ),
                          )
                        ],
                      )
                    ],
                  ),
                  GestureDetector(
                    onTap: () {},
                    child: const ImageIcon(
                      AssetImage("assets/icons/Profilemenu.png"),
                      color: primaryColor,
                    ),
                  )
                ],
              ),
            ),
            // Chat body
            SizedBox(
              height: mediaQuery.height * 0.75,
              child: ListView.builder(
                itemCount: chats.length,
                shrinkWrap: true,
                padding: const EdgeInsets.only(top: 10, bottom: 10),
                itemBuilder: ((context, index) {
                  return Container(
                    padding: const EdgeInsets.only(
                        left: 16, right: 16, top: 10, bottom: 10),
                    child: Align(
                      alignment: chats[index].messageType == "receiver"
                          ? Alignment.topLeft
                          : Alignment.topRight,
                      child: chats[index].isImage
                          ? Container(
                              height: 209,
                              width: 286,
                              padding: const EdgeInsets.all(2),
                              decoration: BoxDecoration(
                                image: DecorationImage(
                                  fit: BoxFit.fill,
                                  image: AssetImage(chats[index].message),
                                ),
                                color: Colors.black,
                                borderRadius:
                                    chats[index].messageType == "receiver"
                                        ? const BorderRadius.only(
                                            topLeft: Radius.circular(35),
                                            topRight: Radius.circular(35),
                                            bottomRight: Radius.circular(35))
                                        : const BorderRadius.only(
                                            topLeft: Radius.circular(35),
                                            topRight: Radius.circular(35),
                                            bottomLeft: Radius.circular(35),
                                          ),
                              ),
                            )
                          : Container(
                              padding: const EdgeInsets.all(20),
                              decoration: BoxDecoration(
                                color: chats[index].messageType == "receiver"
                                    ? primaryColor
                                    : primaryWhiteColor,
                                borderRadius:
                                    chats[index].messageType == "receiver"
                                        ? const BorderRadius.only(
                                            topLeft: Radius.circular(35),
                                            topRight: Radius.circular(35),
                                            bottomRight: Radius.circular(35))
                                        : const BorderRadius.only(
                                            topLeft: Radius.circular(35),
                                            topRight: Radius.circular(35),
                                            bottomLeft: Radius.circular(35),
                                          ),
                              ),
                              child: Text(
                                chats[index].message,
                                style: TextStyle(
                                    color:
                                        chats[index].messageType == "receiver"
                                            ? Colors.white
                                            : Colors.black),
                              ),
                            ),
                    ),
                  );
                }),
              ),
            ),
            // Chat input design
            Container(
              width: 359,
              height: 60,
              decoration: const BoxDecoration(
                color: primaryWhiteColor,
                borderRadius: BorderRadius.all(Radius.circular(25)),
              ),
              child: Row(
                children: const [
                  Center(
                    child: SizedBox(
                      width: 200,
                      height: 40,
                      child: TextField(
                        cursorColor: Colors.grey,
                        decoration: InputDecoration(
                          border: OutlineInputBorder(
                            borderRadius: BorderRadius.all(
                              Radius.circular(15),
                            ),
                          ),
                          enabledBorder: OutlineInputBorder(
                            borderSide:
                                BorderSide(width: 3, color: primaryWhiteColor),
                            borderRadius: BorderRadius.all(
                              Radius.circular(15),
                            ),
                          ),
                          focusedBorder: OutlineInputBorder(
                            borderSide:
                                BorderSide(width: 3, color: primaryWhiteColor),
                            borderRadius: BorderRadius.all(
                              Radius.circular(15),
                            ),
                          ),
                          labelText: "Type your message...",
                          floatingLabelBehavior: FloatingLabelBehavior.never,
                        ),
                      ),
                    ),
                  ),
                  SizedBox(
                    width: 20,
                  ),
                  Icon(
                    Icons.add,
                    color: primaryColor,
                  ),
                  SizedBox(
                    width: 10,
                  ),
                  Icon(
                    Icons.emoji_emotions,
                    color: primaryColor,
                  ),
                  SizedBox(
                    width: 10,
                  ),
                  Icon(
                    Icons.mail,
                    color: primaryColor,
                  ),
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
