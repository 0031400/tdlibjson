import 'input_file.dart';
class InputFileLocal implements InputFile{
  late final String path;
  InputFileLocal.fromJson(Map<String, dynamic> json) {
    path = json['path'];
  }
}
