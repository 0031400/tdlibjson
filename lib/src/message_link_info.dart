import 'message.dart';

class MessageLinkInfo {
  late final Message message;
  MessageLinkInfo.fromJson(Map<String, dynamic> json) {
    message = Message.fromJson(json['message']);
  }
}
