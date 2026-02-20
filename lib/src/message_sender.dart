import 'message_sender_chat.dart';
import 'message_sender_user.dart';

class MessageSender {
  factory MessageSender.fromJson(Map<String, dynamic> json) {
    final type = json['@type'] as String;
    if (type == 'messageSenderUser') {
      return MessageSenderUser.fromJson(json);
    } else if (type == 'messageSenderChat') {
      return MessageSenderChat.fromJson(json);
    } else {
      throw UnimplementedError('Unsupported message sender type: $type');
    }
  }
}
