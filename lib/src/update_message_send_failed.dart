import 'error.dart';
import 'message.dart';

class UpdateMessageSendFailed {
  late final int oldMessageId;
  late final Error error;
  late final Message message;
  UpdateMessageSendFailed.fromJson(Map<String, dynamic> json) {
    oldMessageId = json['old_message_id'];
    error = Error.fromJson(json['error']);
    message = Message.fromJson(json['message']);
  }
}
