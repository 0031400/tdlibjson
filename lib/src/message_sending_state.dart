import 'message_sending_state_pending.dart';
import 'message_sending_state_failed.dart';

class MessageSendingState {
  factory MessageSendingState.fromJson(Map<String, dynamic> json) {
    switch (json['@type']) {
      case 'messageSendingStatePending':
        return MessageSendingStatePending.fromJson(json);
      case 'messageSendingStateFailed':
        return MessageSendingStateFailed.fromJson(json);
      default:
        throw Exception('Unknown MessageSendingState type');
    }
  }
}
