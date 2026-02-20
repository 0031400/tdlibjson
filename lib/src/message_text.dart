import 'message_content.dart';
import 'formatted_text.dart';

class MessageText implements MessageContent {
  late final FormattedText text;
  MessageText.fromJson(Map<String, dynamic> json) {
    text = FormattedText.fromJson(json['text']);
  }
}
