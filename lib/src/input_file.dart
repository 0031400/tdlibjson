import 'input_fileId.dart';
import 'input_file_remote.dart';
import 'input_file_local.dart';
import 'input_file_generated.dart';

class InputFile {
  factory InputFile.fromJson(Map<String, dynamic> json) {
    switch (json['@type']) {
      case 'inputFileId':
        return InputFileId.fromJson(json);
      case 'inputFileRemote':
        return InputFileRemote.fromJson(json);
      case 'inputFileLocal':
        return InputFileLocal.fromJson(json);
      case 'inputFileGenerated':
        return InputFileGenerated.fromJson(json);
      default:
        throw Exception('Unknown InputFile type');
    }
  }
}
