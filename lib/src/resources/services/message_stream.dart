import 'dart:async';
import 'package:rxdart/rxdart.dart';

class MessageStream {
  MessageStream._internal();

  static final MessageStream _instance = MessageStream._internal();

  static MessageStream get instance {
    return _instance;
  }

  final _message = BehaviorSubject<Map<String, dynamic>>();
  Stream<Map<String, dynamic>> get messageStream => _message.stream;

  void addMessage(Map<String, dynamic> msg) {
    _message.add(msg);
    return;
  }

  void dispose() {
    _message.close();
  }
}
