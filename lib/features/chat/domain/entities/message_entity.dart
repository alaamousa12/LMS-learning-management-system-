abstract class MessageEntity {
  final String message;
  final String sendAt;
  final String senderId;
  final String chatId;
  final bool isMe;
  MessageEntity({
    required this.message,
    required this.sendAt,
    required this.senderId,
    required this.chatId,
    required this.isMe,
  });
}