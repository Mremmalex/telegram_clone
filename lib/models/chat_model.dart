class ChatModel {
  final String message;
  final String messageType;
  bool isImage;

  ChatModel(
      {required this.message, required this.messageType, this.isImage = false});
}
