import 'package:cupertino_store/model/dio_services/app_interceptors.dart';
import 'package:dio/dio.dart';
import 'package:flutter_config/flutter_config.dart';

class BaseDio {
  late Dio dio;
  static String _baseUrl = FlutterConfig.get("APP_DOMAIN");
  static const Duration _connectTimeOut = Duration(minutes: 1);
  static const Duration _receiveTimeout = Duration(minutes: 1);

  BaseDio() {
    dio = Dio(
      BaseOptions(
        baseUrl: _baseUrl,
        connectTimeout: _connectTimeOut.inMilliseconds,
        receiveTimeout: _receiveTimeout.inMilliseconds,
      ),
    );
  }

  initializeInterceptors() {
    dio.interceptors.add(AppInterceptors());
  }
}
