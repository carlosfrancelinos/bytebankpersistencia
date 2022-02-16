import 'package:flutter/foundation.dart';
import 'package:http_interceptor/http/http.dart';
import 'package:http_interceptor/models/models.dart';

class LoggingInterceptor implements InterceptorContract {
  @override
  Future<RequestData> interceptRequest({required RequestData data}) async {
    if (kDebugMode) {
      print('Request');
      print('url: ${data.url}');
      print('headers: ${data.headers}');
      print('body: ${data.body}');
    }

    return data;
  }

  @override
  Future<ResponseData> interceptResponse({required ResponseData data}) async {
    if (kDebugMode) {
      print('Response');
      print('status code: ${data.statusCode}');
      print('headers: ${data.headers}');
      print('body: ${data.body}');
    }

    return data;
  }
}