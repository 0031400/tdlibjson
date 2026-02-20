class LocalFile {
  late final String path;
  late final bool isDownloadingCompleted;
  LocalFile.fromJson(Map<String, dynamic> json) {
    path = json['path'];
    isDownloadingCompleted = json['is_downloading_completed'];
  }
}
