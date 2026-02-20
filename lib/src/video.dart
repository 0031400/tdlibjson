import 'file.dart';

class Video {
  late final File video;
  Video.fromJson(Map<String, dynamic> json) {
    video = File.fromJson(json['video']);
  }
}
