import 'package:cupertino_store/routes/router.dart';
import 'package:flutter/cupertino.dart';
// ignore: import_of_legacy_library_into_null_safe
import 'package:flutter_config/flutter_config.dart' show FlutterConfig;

import 'app.dart';

void main()async {
  WidgetsFlutterBinding.ensureInitialized();
  await FlutterConfig.loadEnvVariables();
  return runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return CupertinoApp(
      theme: const CupertinoThemeData(brightness: Brightness.light),
      home: CupertinoStoreApp(),
      onGenerateRoute:(settings) => HandlerRoute.generateRoute(settings),
    );
  }
}

