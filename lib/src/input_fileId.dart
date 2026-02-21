import 'input_file.dart';

class InputFileId implements InputFile {
  late final int id;
  InputFileId.fromJson(Map<String, dynamic> json) {
    id = json['id'];
  }
}
