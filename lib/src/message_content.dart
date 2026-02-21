import 'message_text.dart';
import 'message_video.dart';
import 'message_audio.dart';
class MessageContent {
  factory MessageContent.fromJson(Map<String, dynamic> json) {
    final type = json["@type"] as String;
    if (type == "messageText") {
      return MessageText.fromJson(json);
    } else if (type == "messageVideo") {
      return MessageVideo.fromJson(json);
    } else if (type == "messageAudio") {
      return MessageAudio.fromJson(json);
    }
    return MessageText.fromJson({
      'text': {'text': 'Unsupported message content type: $type'},
    });
  }
}
