class LocalFile {
  late final String path;
  late final bool isDownloadingCompleted;
  late final int downloadedSize;
  late final bool isDownloadingActive;
  LocalFile.fromJson(Map<String, dynamic> json) {
    path = json['path'];
    isDownloadingCompleted = json['is_downloading_completed'];
    downloadedSize = json['downloaded_size'];
    isDownloadingActive = json['is_downloading_active'];
  }
}
