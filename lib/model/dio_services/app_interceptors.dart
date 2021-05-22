import 'dart:async';

import 'package:dio/dio.dart';
import 'package:shared_preferences/shared_preferences.dart';

class AppInterceptors extends Interceptor {
  @override
  FutureOr<dynamic> onRequest(options, handler) async {
    SharedPreferences prefs = await SharedPreferences.getInstance();
    final token = prefs.getString('token');
    options.headers['Authorization'] = token ?? "";
    options.contentType = 'application/json';
    return handler.next(options);
  }

  @override
  FutureOr<dynamic> onResponse(response, handler) async {
    // Todo handler response
  }

  @override
  FutureOr<dynamic> onError(dioError, handler) {
    if (dioError.response?.statusCode == 403 ||
        dioError.response?.statusCode == 401) {
      //push to loginPage
      return DioError(
        requestOptions: RequestOptions(path: '/login'),
        type: DioErrorType.cancel,
        error: "Authorization error",
      );
    }

    return dioError;
  }
}
