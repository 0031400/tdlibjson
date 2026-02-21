import 'message_content.dart';
import 'audio.dart';
class MessageAudio implements MessageContent {
  late final Audio audio;
  MessageAudio.fromJson(Map<String, dynamic> json) {
    audio = Audio.fromJson(json['audio']);
  }
}