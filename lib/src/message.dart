import 'message_sender.dart';
import 'message_sending_state.dart';
import 'message_content.dart';

class Message {
  late final int id;
  late final bool isOutgoing;
  late final MessageSendingState? sendingState;
  late final int date;
  late final int editDate;

  late final MessageContent content;
  late final MessageSender senderId;
  late final int chatId;
  Message.fromJson(Map<String, dynamic> json) {
    id = json['id'];
    isOutgoing = json['is_outgoing'];
    content = MessageContent.fromJson(json['content']);
    senderId = MessageSender.fromJson(json['sender_id']);
    chatId = json['chat_id'];
    date = json['date'];
    editDate = json['edit_date'];
    if (json.containsKey('sending_state')) {
      sendingState = MessageSendingState.fromJson(json['sending_state']);
    } else {
      sendingState = null;
    }
  }
}
