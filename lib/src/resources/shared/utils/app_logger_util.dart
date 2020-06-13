import 'package:logger/logger.dart';

class AppLoggerPrint extends LogPrinter {
  final String className;
  AppLoggerPrint(this.className);
  @override
  void log(Level level, message, error, StackTrace stackTrace) {
    var color = PrettyPrinter.levelColors[level];
    var emoji = PrettyPrinter.levelEmojis[level];
    println(color('$emoji $className - $message'));
  }
}
