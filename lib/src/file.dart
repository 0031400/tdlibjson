import 'remote_file.dart';
import 'local_file.dart';

class File {
  late final int id;
  late final int size;
  late final RemoteFile remote;
  late final LocalFile local;
  File.fromJson(Map<String, dynamic> json) {
    id = json['id'];
    size = json['size'];
    remote = RemoteFile.fromJson(json['remote']);
    local = LocalFile.fromJson(json['local']);
  }
}
