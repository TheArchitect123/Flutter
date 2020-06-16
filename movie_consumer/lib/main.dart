import 'package:flutter/material.dart';
import 'dart:async' as ASYNC;

import 'package:movie_consumer/helpers/navigationHelper.dart';

void main() {
  runApp(ApplicationWideMngr());
}

class ApplicationWideMngr extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return NavigationHelper.initializeRootPage();
  }
}
