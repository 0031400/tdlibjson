import 'message_sending_state.dart';
import 'error.dart';

class MessageSendingStateFailed implements MessageSendingState {
  late final Error error;
  MessageSendingStateFailed.fromJson(Map<String, dynamic> json) {
    error = Error.fromJson(json['error']);
  }
}
