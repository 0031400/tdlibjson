import 'file.dart';

class Audio {
  late final File audio;
  Audio.fromJson(Map<String, dynamic> json) {
    audio = File.fromJson(json['audio']);
  }
}
