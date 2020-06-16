class AppInformation {
  static const String version = "0";
  static const String minor = "0";
  static const String build = "1";
  static const String appName = "Movie Search";

  ///Format the Build Version String
  static String getString() {
    return "${appName} - ${version}.${minor}.${build}";
  }
}
