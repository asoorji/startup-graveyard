import 'package:dio/dio.dart';
import 'package:flutter/foundation.dart';
import 'package:pretty_dio_logger/pretty_dio_logger.dart';

import '../../config/constants.dart';
import '../../state/app_prefs.dart';

class DioFactory {
  DioFactory(this.appPreferences);
  AppPreferences appPreferences;
  Dio getDio() {
    Dio dio = Dio();

    dio.options = BaseOptions(
      baseUrl: AppConstants.baseUrl,
      // headers: headers,
    );

    if (kReleaseMode) {
    } else {
      dio.interceptors.add(
        PrettyDioLogger(
          requestHeader: true,
          requestBody: true,
          responseBody: true,
        ),
      );
    }
    return dio;
  }
}
