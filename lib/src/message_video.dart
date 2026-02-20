import 'message_content.dart';
import 'video.dart';

class MessageVideo implements MessageContent {
  late final Video video;
  MessageVideo.fromJson(Map<String, dynamic> json) {
    video = Video.fromJson(json['video']);
  }
}
