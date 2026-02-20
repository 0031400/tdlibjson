class FormattedText {
  late final String text;
  FormattedText.fromJson(Map<String, dynamic> json) {
    text = json['text'];
  }
}
