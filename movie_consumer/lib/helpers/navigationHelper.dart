import 'package:flutter/material.dart';
import 'package:movie_consumer/constants/appInformation.dart';

//Internal Constants, Themes, Helpers
import 'package:movie_consumer/theme/themeMngr.dart';
import 'package:movie_consumer/constants/appInformation.dart';
import 'package:movie_consumer/pages/DashboardPage.dart';

class NavigationHelper {
  static MaterialApp initializeRootPage() {
//For applications, that require authentication to determine the root page

    return MaterialApp(
      debugShowCheckedModeBanner: false,
      debugShowMaterialGrid: false,
      showSemanticsDebugger: false,
      title: AppInformation.appName,
      theme: ThemeMngr.getApplicationWideTheme(),
      home: DashboardPage(),
    );
  }
}
