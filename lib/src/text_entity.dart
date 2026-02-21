import 'text_entity_type.dart';

class TextEntity {
  late final int offset;
  late final int length;
  late final TextEntityType type;
  TextEntity.fromJson(Map<String, dynamic> json) {
    offset = json['offset'];
    length = json['length'];
    type = TextEntityType.values.firstWhere((e) => e.name ==  json['type']['@type']);
  }
}
