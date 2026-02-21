import 'message_content.dart';
import 'audio.dart';
import 'formatted_text.dart';
class MessageAudio implements MessageContent {
  late final Audio audio;
  late final  FormattedText caption;
  MessageAudio.fromJson(Map<String, dynamic> json) {
    audio = Audio.fromJson(json['audio']);
    caption=FormattedText.fromJson(json['caption']);
  }
}