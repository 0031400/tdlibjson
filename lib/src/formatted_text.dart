import 'text_entity.dart';

class FormattedText {
  late final String text;
  late final List<TextEntity> entities;
  FormattedText.fromJson(Map<String, dynamic> json) {
    text = json['text'];
    entities = (json['entities'] as List<dynamic>?)
        ?.map((e) => TextEntity.fromJson(e))
        .toList() ?? [];
  }
}
