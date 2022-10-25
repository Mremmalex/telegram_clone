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
    this.sentBy = "user",
    this.unread = true,
    this.seen = false,
  });
}
