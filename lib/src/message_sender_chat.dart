import 'message_sender.dart';

class MessageSenderChat implements MessageSender {
  late final int chatId;
  MessageSenderChat.fromJson(Map<String, dynamic> json) {
    chatId = json['chat_id'];
  }
}
