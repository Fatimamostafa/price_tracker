import 'dart:core';
import 'package:dio/dio.dart';
import 'package:dio_smart_retry/dio_smart_retry.dart';
import 'package:pricetracker/src/core/network/exceptions.dart';
import 'package:pricetracker/src/core/values/constants.dart';

/// Expose a HTTP client without actually exposing that we're using [Dio]
/// underneath.
class HttpClient {
  late final Dio _client;

  HttpClient() {
    _client = Dio(
      BaseOptions(
        baseUrl: Constants.baseUrl,
        connectTimeout: 100000,
        receiveTimeout: 100000,
      ),
    );
    _client.interceptors.add(RetryInterceptor(
      dio: _client,
      logPrint: print,
      retries: 1,
    ));
  }

  Future<Response<T>> get<T>(
    String path, {
    Map<String, dynamic>? queryParameters,
    Options? options,
    CancelToken? cancelToken,
    ProgressCallback? onReceiveProgress,
  }) async {
    try {
      return await _client.get<T>(
        path,
        queryParameters: queryParameters,
        options: options,
        cancelToken: cancelToken,
        onReceiveProgress: onReceiveProgress,
      );
    } on DioError catch (e) {
      throw NetworkExceptions.getDioException(e);
    }
  }
}
