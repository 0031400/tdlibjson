import 'file.dart';

class Audio {
  late final File audio;
  late final String title;
  Audio.fromJson(Map<String, dynamic> json) {
    audio = File.fromJson(json['audio']);
    title = json['title'];
  }
}
