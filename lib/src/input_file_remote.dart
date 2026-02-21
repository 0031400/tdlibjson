import 'input_file.dart';

class InputFileRemote implements InputFile {
  late final String id;
  InputFileRemote.fromJson(Map<String, dynamic> json) {
    id = json['id'];
  }
}
