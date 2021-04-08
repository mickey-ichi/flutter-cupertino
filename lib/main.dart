import 'package:flutter/cupertino.dart';

import 'app.dart';

void main() {
  return runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return CupertinoStoreApp();
  }
}

