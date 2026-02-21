class Chat {
  late final int id;
  late final String title;
  Chat.fromJson(Map<String, dynamic> json) {
    id = json['id'];
    title = json['title'];
  }
}