import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:j3enterprise/src/resources/repositories/user_repository.dart';
import 'package:j3enterprise/src/resources/services/message_stream.dart';
import 'package:bot_toast/bot_toast.dart';
import 'package:j3enterprise/src/ui/authentication/authentication.dart';
import 'package:j3enterprise/src/ui/authentication/authentication_bloc.dart';
import 'package:j3enterprise/main.dart';

class FirebaseMessageWrapper extends StatefulWidget {
  final Widget child;

  FirebaseMessageWrapper({this.child});
  @override
  _FirebaseMessageWrapperState createState() => _FirebaseMessageWrapperState();
}

class _FirebaseMessageWrapperState extends State<FirebaseMessageWrapper> {
  MessageStream _messageStream = MessageStream.instance;
  bool enableSlideOff = true;
  bool hideCloseButton = false;
  bool onlyOne = true;
  bool crossPage = true;
  int seconds = 2;
  int animationMilliseconds = 200;
  int animationReverseMilliseconds = 200;

  @override
  void dispose() {

    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return StreamBuilder(
      initialData: null,
      stream: _messageStream.messageStream,
      builder: (BuildContext context,
          AsyncSnapshot<Map<String, dynamic>> snapshot) {
        Map<String, dynamic> message = snapshot.data;
       print(snapshot.data);
        if (message != null) {
          _serialiseAndNavigate(message, context);
        }
        return widget.child;
      });

  }

  void _serialiseAndNavigate(Map<String, dynamic> message, context)async {

   bool hasToken=await  getIt<UserRepository>().hasToken();
    Priority priority = getPriority(message['priority']);
    if (ModalRoute.of(context).isCurrent) {
      WidgetsBinding.instance.addPostFrameCallback((_) =>
          BotToast.showNotification(
              crossPage: true,
              title: (_) => Text(message['notification']["title"]),
              leading: (_) => Image.asset(
                    'images/logo.png',
                  ),
              subtitle: (_) => Text(message['notification']["body"]),
              duration: Duration(
                  seconds: priority == Priority.HIGH
                      ? 1000
                      : priority == Priority.MEDIUM ? 5 : 3),
              enableSlideOff: priority == Priority.HIGH ? false : true,
              dismissDirections: [DismissDirection.horizontal],
              onTap: () {
                BotToast.cleanAll();
                BlocProvider.of<AuthenticationBloc>(context).add(PushNotification(route: hasToken?message['view']:'login'));
              }));
    }
  }

  Priority getPriority(priority) {
    switch (priority) {
      case 'high':
        return Priority.HIGH;
        break;
      case 'medium':
        return Priority.MEDIUM;
        break;
      case 'low':
        return Priority.LOW;
        break;
      default:
        return Priority.LOW;
        break;
    }
  }
}

enum Priority { HIGH, MEDIUM, LOW }
