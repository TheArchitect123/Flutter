import 'package:flutter/material.dart';
import 'package:movie_consumer/pages/dashboardPage.dart';

final Map<String, WidgetBuilder> routes = <String, WidgetBuilder>{
  //"/": (BuildContext context) => ExScreen1(),
  "/dash": (BuildContext context) => DashboardPage(),
};
