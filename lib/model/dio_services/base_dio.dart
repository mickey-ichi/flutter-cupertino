import 'package:cupertino_store/model/dio_services/app_interceptors.dart';
import 'package:dio/dio.dart';
import 'package:flutter_config/flutter_config.dart';

class BaseDio {
  final Dio dio;

  static final String _baseUrl = FlutterConfig.get("APP_DOMAIN");
  static final BaseOptions _baseOptions = BaseOptions(
    baseUrl: _baseUrl,
    connectTimeout: Duration(minutes: 1).inMilliseconds,
    receiveTimeout: Duration(minutes: 1).inMilliseconds,
  );

  BaseDio._internal(this.dio);

  static final BaseDio _instance = BaseDio._internal(Dio(_baseOptions));

  factory BaseDio() {
    return _instance;
  }

  initializeInterceptors() {
    dio.interceptors.clear();
    dio.interceptors.add(AppInterceptors());
  }
}
