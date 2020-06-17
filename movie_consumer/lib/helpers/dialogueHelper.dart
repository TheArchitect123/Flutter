import 'package:flutter/material.dart';
import 'package:movie_consumer/constants/appInformation.dart';

class DialogueHelper {
  static void showDialogueWithSimpleMessage(
      String message, BuildContext context) {
    AlertDialog simpleDialogue = AlertDialog(
        title: Text(AppInformation.appName),
        content: Text(message),
        actions: [RaisedButton(onPressed: () => {}, textColor: Colors.white)]);
    showDialog(context: context, child: simpleDialogue);
  }
}
