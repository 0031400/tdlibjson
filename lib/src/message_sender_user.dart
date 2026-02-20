import 'message_sender.dart';

class MessageSenderUser implements MessageSender {
  late final int userId;

  MessageSenderUser.fromJson(Map<String, dynamic> json) {
    userId = json['user_id'];
  }
}
