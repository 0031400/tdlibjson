import 'message.dart';

class UpdateMessageSendSucceeded {
  late final int oldMessageId;
  late final Message message;
  UpdateMessageSendSucceeded.fromJson(Map<String, dynamic> json) {
    oldMessageId = json['old_message_id'];
    message = Message.fromJson(json['message']);
  }
}
