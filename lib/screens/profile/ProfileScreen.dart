import 'package:flutter/cupertino.dart';
import 'package:flutter_config/flutter_config.dart' show FlutterConfig;
import 'dart:developer' as developer;

class ProfileScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    developer.log('log me ${FlutterConfig.get('APP_DOMAIN')}');

    return const CupertinoPageScaffold(
      navigationBar: CupertinoNavigationBar(
        middle: Text('Cupertino Store'),
      ),
      child: SizedBox(),
    );
  }
}
