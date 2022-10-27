import 'package:telegram/models/chat_model.dart';

class UserModel {
  final int id;
  final String name;
  final String phone;
  final String image;
  final String bio;
  final String message;
  final int time;
  final String sentBy;
  final int messageCount;
  final List<ChatModel> chats;
  bool unread;
  bool seen;

  UserModel({
    required this.name,
    required this.id,
    required this.phone,
    required this.image,
    required this.bio,
    required this.message,
    required this.time,
    required this.messageCount,
    required this.chats,
    this.sentBy = "user",
    this.unread = true,
    this.seen = false,
  });
}
