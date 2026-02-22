import 'file.dart';

class Video {
  late final File video;
  late final String fileName;
  late final int duration;
  late final int width;
  late final int height;
  Video.fromJson(Map<String, dynamic> json) {
    video = File.fromJson(json['video']);
    fileName = json['file_name'];
    duration = json['duration'];
    width = json['width'];
    height = json['height'];
  }
}
