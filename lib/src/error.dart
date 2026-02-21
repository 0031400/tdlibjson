class Error {
  late final int code;
  late final String message;
  Error.fromJson(Map<String, dynamic> json) {
    code = json['code'];
    message = json['message'];
  }
}
