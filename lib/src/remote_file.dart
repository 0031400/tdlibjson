class RemoteFile {
  late final String id;
  late final String uniqueId;
  RemoteFile.fromJson(Map<String, dynamic> json) {
    id = json['id'];
    uniqueId = json['unique_id'];
  }
}
