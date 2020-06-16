import 'dart:async' show Future;
import 'package:flutter/services.dart' show rootBundle;

class ImageHelper {
  static Future<String> loadAssetAsync(String imageName) async {
    return await rootBundle.loadString('resources/images/$imageName');
  }

  static Future<String> loadAppBarIconAsync() async {
    return await rootBundle.loadString('resources/assets/titleIcon.png');
  }
}
