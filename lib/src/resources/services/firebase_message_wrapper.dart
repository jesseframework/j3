import 'package:flutter/material.dart';
import 'package:j3enterprise/src/resources/services/message_stream.dart';
import 'package:bot_toast/bot_toast.dart';

class FirebaseMessageWrapper extends StatefulWidget {
  final Widget child;

  FirebaseMessageWrapper(this.child);
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
                  .addPostFrameCallback((_) => _showMessage(msg));
            }
            // adding a null stops the previous message from being displayed again
            MessageStream.instance.addMessage(null);
          }
          return widget.child;
        });
  }

  void _showMessage(Map<String, dynamic> message) {
    SnackBar bar = SnackBar(
      behavior: SnackBarBehavior.floating,
      duration: Duration(seconds: 10),
      action: SnackBarAction(
        label: "Close",
        textColor: Colors.redAccent,
        onPressed: () => Scaffold.of(context).hideCurrentSnackBar(),
      ),
      content: Padding(
        padding: const EdgeInsets.only(bottom: 25.0),
        child: Column(
          mainAxisSize: MainAxisSize.min,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            Text(message['notification']["title"]),
            Text(message['notification']["body"]),
          ],
        ),
      ),
    );

    Scaffold.of(context)
      ..hideCurrentSnackBar()
      ..showSnackBar(bar);
  }
  // void initState() {
  //   BotToast.showSimpleNotification(
  //       title: message['notification']["title"],
  //       subTitle: message['notification']["body"],
  //       enableSlideOff: enableSlideOff,
  //       hideCloseButton: hideCloseButton,
  //       onTap: () {
  //         BotToast.showText(text: 'Tap toast');
  //       },
  //       onLongPress: () {
  //         BotToast.showText(text: 'Long press toast');
  //       },
  //       onlyOne: onlyOne,
  //       crossPage: crossPage,
  //       animationDuration: Duration(milliseconds: animationMilliseconds),
  //       animationReverseDuration:
  //           Duration(milliseconds: animationReverseMilliseconds),
  //       duration: Duration(seconds: seconds));
  //   super.initState();
  // }

}
