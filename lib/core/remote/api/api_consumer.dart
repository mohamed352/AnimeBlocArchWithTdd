import 'package:dio/dio.dart';

abstract class ApiConsumer {
  Future<dynamic> get(String path, {Map<String, dynamic>? queryParameters});
  Future<dynamic> post(String path,
      {Map<String, dynamic>? body,
      Map<String, dynamic>? queryParameters,
      bool formDataIsEnabled = false,
      Options? options});
  Future<dynamic> put(String path,
      {Map<String, dynamic>? body, Map<String, dynamic>? queryParameters});
  Future<dynamic> patch(String path,
      {Map<String, dynamic>? body, Map<String, dynamic>? queryParameters});
  Future<dynamic> delete(
    String path, {
    Map<String, dynamic>? body,
    Map<String, dynamic>? queryParameters,
    bool formDataIsEnabled = true,
  });
  Future<dynamic> getHead(
    String path,
  );
}
