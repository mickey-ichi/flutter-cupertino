import 'package:flutter/cupertino.dart';
import 'package:flutter/services.dart';

import 'package:cupertino_store/navigations/MainTabBar.dart';

class CupertinoStoreApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // This app is designed only to work vertically, so we limit
    // orientations to portrait up and down.
    SystemChrome.setPreferredOrientations(
        [DeviceOrientation.portraitUp, DeviceOrientation.portraitDown]);

    return CupertinoApp(
      theme: const CupertinoThemeData(brightness: Brightness.light),
      home: MainTabBar(),
    );
  }
}
