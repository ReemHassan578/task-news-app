import 'package:dio/dio.dart';
import 'package:flutter/foundation.dart';
import 'package:pretty_dio_logger/pretty_dio_logger.dart';

import 'api_end_points.dart';

class DioHelper {
  static Dio? _dio;

  static Dio getDio() {
    Duration timeout = const Duration(seconds: 30);

    _dio ??= Dio(BaseOptions(
      baseUrl: ApiEndPoints.baseUrl,
      receiveDataWhenStatusError: true,
      connectTimeout: timeout,
      receiveTimeout: timeout,
    ));
    _addInterceptor();
    _addHeaders();
    return _dio!;
  }

  static void _addHeaders() {
    _dio!.options.headers=
    {
    }
    ;
  }

  static void _addInterceptor() {
    _dio!.interceptors.add(PrettyDioLogger(
      requestHeader: true,
      requestBody: true,
      responseBody: true,
      responseHeader: false,
      error: true,
      compact: true,
      maxWidth: 90,
      enabled: kDebugMode,
    ));
  }
}
