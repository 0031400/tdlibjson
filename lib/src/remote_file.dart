class RemoteFile {
  late final String id;
  late final String uniqueId;
  late final bool isUploadingActive;
  late final bool isUploadingCompleted;
  late final int uploadedSize;
  RemoteFile.fromJson(Map<String, dynamic> json) {
    id = json['id'];
    uniqueId = json['unique_id'];
    isUploadingActive = json['is_uploading_active'];
    isUploadingCompleted = json['is_uploading_completed'];
    uploadedSize = json['uploaded_size'];
  }
}
