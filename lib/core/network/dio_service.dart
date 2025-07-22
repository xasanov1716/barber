import 'package:barber/core/network/api_constants.dart';
import 'package:dio/dio.dart';

class DioService {
  late final Dio _dio;

  DioService() {
    _dio = Dio(
      BaseOptions(
        baseUrl: ApiConstants.baseUrl,
        connectTimeout: const Duration(seconds: 15),
        receiveTimeout: const Duration(seconds: 15),
        contentType: Headers.jsonContentType,
      ),
    )
      // ..interceptors.add(
      //   InterceptorsWrapper(
      //     onRequest: (options, handler) async {
      //       final token = await HiveService.getToken();
      //       print('Auth Interceptor - Token from Hive: $token'); // DEBUG LINE
      //       if (token != null && token.isNotEmpty) { // Added isNotEmpty check
      //         options.headers['Authorization'] = 'Bearer $token';
      //         print('Auth Interceptor - Authorization header set: Bearer $token'); // DEBUG LINE
      //       } else {
      //         print('Auth Interceptor - Token is null or empty. Authorization header NOT set.'); // DEBUG LINE
      //       }
      //       handler.next(options);
      //     },
      //     onError: (error, handler) => handler.next(error),
      //   ),
      // )
      ..interceptors.add(
        LogInterceptor(
          request: true,
          requestBody: true,
          responseBody: true,
          responseHeader: false,
        ),
      );
  }

  Dio get dio => _dio;

  void setToken(String token) {
    _dio.options.headers['Authorization'] = 'Bearer $token';
  }

  Future<Response> get(String path, {Map<String, dynamic>? queryParams}) async {
    return await _dio.get(path, queryParameters: queryParams);
  }

  Future<Response> post(String path, {dynamic data}) async {
    return await _dio.post(path, data: data);
  }

  Future<Response> put(String path, {dynamic data}) async {
    return await _dio.put(path, data: data);
  }

  Future<Response> delete(String path, {Map<String, dynamic>? queryParams}) async {
    return await _dio.delete(path, queryParameters: queryParams);
  }
}