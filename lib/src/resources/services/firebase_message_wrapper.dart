import 'package:flutter/material.dart';
import 'package:j3enterprise/src/resources/services/message_stream.dart';
import 'package:bot_toast/bot_toast.dart';

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
          Map<String, dynamic> msg = snapshot.data;
          if (msg != null) {
            // check if this instance is the current route or else message will be displayed on all instances

            if (ModalRoute.of(context).isCurrent) {
              WidgetsBinding.instance
                  .addPostFrameCallback((_) => BotToast.showNotification(
                      title: (_) => Text(msg['notification']["title"]),
                      leading: (_) => Image.asset(
                            'images/logo.png',
                          ),
                      subtitle: (_) => Text(msg['notification']["body"]),
                      duration: Duration(seconds: 10),
                      enableSlideOff: true,
                      dismissDirections: [DismissDirection.horizontal],
                      onTap: () {
                        BotToast.cleanAll();
                        print("notification is taped");
                        _serialiseAndNavigate(msg, context);
                      }));
            }
            // adding a null stops the previous message from being displayed again
            //  MessageStream.instance.addMessage(null);
          }
          return widget.child;
        });
  }

  void _serialiseAndNavigate(Map<String, dynamic> message, context) {
    var view = message['view'];
    if (view != null) {
      print("view is present ..........");

      Navigator.pushNamed(context, view);
    } else {
      print("view is  Not present ..........");
    }
  }
}
