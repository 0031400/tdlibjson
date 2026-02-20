import 'message_sender.dart';

import 'message_content.dart';

class Message {
  late final int id;
  late final bool isOutgoing;
  late final MessageContent content;
  late final MessageSender senderId;
  late final int chatId;
  Message.fromJson(Map<String, dynamic> json) {
    id = json['id'];
    isOutgoing = json['is_outgoing'];
    content = MessageContent.fromJson(json['content']);
    senderId = MessageSender.fromJson(json['sender_id']);
    chatId = json['chat_id'];
  }
}
