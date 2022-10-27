import 'package:telegram/models/chat_model.dart';
import 'package:telegram/models/user_model.dart';

List<UserModel> userData = [
  UserModel(
    id: 1,
    name: "Theresa Webb",
    phone: "+357898990343",
    image: "assets/users/user1.jpeg",
    bio: "I am a designer from microsoft",
    message: "Hello, how are you?",
    time: DateTime.now().hour,
    chats: [
      ChatModel(message: "hello", messageType: "receiver"),
      ChatModel(message: "hi", messageType: "sender")
    ],
    messageCount: 2,
  ),
  UserModel(
    id: 2,
    name: "Calvin Fores",
    phone: "+357898990343",
    image: "assets/users/user2.jpeg",
    bio: "I am a Frontend from microsoft",
    message: "Hello, will you stop ignoring me?",
    messageCount: 1,
    chats: [
      ChatModel(message: "hello", messageType: "receiver"),
      ChatModel(message: "hi", messageType: "sender")
    ],
    time: DateTime.now().minute,
  ),
  UserModel(
    id: 3,
    name: "Gregory Bell",
    phone: "+357898990343",
    image: "assets/users/user1.jpeg",
    bio: "I am a designer from microsoft",
    message: "Hello bro!, Come To my house",
    messageCount: 164,
    chats: [
      ChatModel(message: "hello", messageType: "receiver"),
      ChatModel(message: "hi", messageType: "sender")
    ],
    time: DateTime.now().minute,
  ),
  UserModel(
    id: 4,
    name: "Soham Henry",
    phone: "+357898990343",
    image: "assets/users/user3.jpeg",
    bio: "I am a designer from microsoft",
    message: "Hello, Why did you do that?",
    messageCount: 66,
    chats: [
      ChatModel(message: "hello", messageType: "receiver"),
      ChatModel(message: "hi", messageType: "sender")
    ],
    time: DateTime.now().minute,
  ),
  UserModel(
    id: 5,
    name: "Mother",
    phone: "+357898990343",
    image: "assets/users/user1.jpeg",
    bio: "I am a designer from microsoft",
    message: "yes , of course come",
    time: DateTime.now().minute,
    sentBy: "me",
    unread: false,
    messageCount: 0,
    chats: [
      ChatModel(
          message:
              "Hi, son, how are you doing? Today, my father and I went to buy a car, bought a cool car.",
          messageType: "receiver"),
      ChatModel(message: "Oh! cool send me photo", messageType: "sender"),
      ChatModel(message: "ok😍", messageType: "receiver"),
      ChatModel(
        message: "assets/users/user2.jpeg",
        messageType: "receiver",
        isImage: true,
      ),
      ChatModel(message: "will we arrive tomorrow?", messageType: "receiver"),
    ],
    seen: true,
  ),
  UserModel(
    id: 6,
    name: "Brother",
    phone: "+357898990343",
    image: "assets/users/user3.jpeg",
    bio: "I am a designer from microsoft",
    message: "Ok, I will come",
    time: DateTime.now().minute,
    sentBy: "me",
    messageCount: 0,
    chats: [
      ChatModel(message: "hello", messageType: "receiver"),
      ChatModel(message: "hi", messageType: "sender")
    ],
    unread: false,
  ),
];
