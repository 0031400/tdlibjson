import 'formatted_text.dart';
import 'message_content.dart';
import 'video.dart';

class MessageVideo implements MessageContent {
  late final Video video;
  late final FormattedText caption;
  MessageVideo.fromJson(Map<String, dynamic> json) {
    video = Video.fromJson(json['video']);
    caption = FormattedText.fromJson(json['caption']);
  }
}
