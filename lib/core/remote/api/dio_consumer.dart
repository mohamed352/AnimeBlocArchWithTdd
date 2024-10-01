import 'dart:convert';

import 'package:dio/dio.dart';
import 'package:flutter/foundation.dart';
import 'package:test_bloc_feature/core/constant.dart';

import 'package:test_bloc_feature/core/remote/api/api_consumer.dart';
import 'package:test_bloc_feature/core/remote/api/end_points.dart';
import 'package:test_bloc_feature/core/remote/api/status_code.dart';

import 'pretty_dio_logger.dart';

class DioConsumer implements ApiConsumer {
  final Dio client;

  DioConsumer({
    required this.client,
  }) {
    client.options
      ..baseUrl = EndPoints.baseUrl
      ..responseType = ResponseType.plain
      ..followRedirects = false
      ..connectTimeout = Constant.connectTimeout
      ..headers = Constant.headers
      ..receiveTimeout = Constant.timeout
      ..sendTimeout = Constant.timeout
      ..receiveDataWhenStatusError = true
      ..validateStatus = (status) {
        if (status == StatusCode.unauthorized) {
          return false;
        }
        return true;
      };

    if (kDebugMode) {
      client.interceptors.add(const PrettyDioLogger());
    }
  }
  @override
  Future get(String path, {Map<String, dynamic>? queryParameters}) async {
    try {
      final response = await client.get(
        path,
        queryParameters: queryParameters,
      );

      return _handleResponseAsJson(response);
    } on DioException catch (error) {
      debugPrint(error.message);
    }
  }

  @override
  Future post(String path,
      {Map<String, dynamic>? body,
      bool formDataIsEnabled = false,
      Map<String, dynamic>? queryParameters,
      Options? options}) async {
    try {
      final response = await client.post(path,
          queryParameters: queryParameters,
          options: options,
          data: formDataIsEnabled ? FormData.fromMap(body!) : body);
      return _handleResponseAsJson(response);
    } on DioException catch (error) {
      debugPrint(error.message);
    }
  }

  @override
  Future put(String path,
      {Map<String, dynamic>? body,
      Map<String, dynamic>? queryParameters}) async {
    try {
      final response = await client.put(
        path,
        queryParameters: queryParameters,
        data: body,
      );
      return _handleResponseAsJson(response);
    } on DioException catch (error) {
      debugPrint(error.message);
    }
  }

  dynamic _handleResponseAsJson(Response<dynamic> response) {
    try {
      final status = response.statusCode;

      if (status == StatusCode.ok ||
          status == 201 ||
          status == 204 ||
          response.data is Map) {
        final data = response.data.toString();
        final responseJson = jsonDecode(data);
        return responseJson;
      }
    } catch (e) {
      return null;
    }
  }

  @override
  Future patch(String path,
      {Map<String, dynamic>? body,
      Map<String, dynamic>? queryParameters}) async {
    try {
      final response = await client.patch(
        path,
        queryParameters: queryParameters,
        data: body,
      );
      return _handleResponseAsJson(response);
    } on DioException catch (error) {
      debugPrint(error.message);
    }
  }

  @override
  Future delete(String path,
      {Map<String, dynamic>? body,
      Map<String, dynamic>? queryParameters,
      bool formDataIsEnabled = true}) async {
    try {
      final response = await client.delete(path,
          queryParameters: queryParameters,
          data: formDataIsEnabled ? FormData.fromMap(body!) : body);
      if (response.statusCode == StatusCode.badRequest) {
        return _handleResponseAsJson(response);
      } else {
        return null;
      }
    } on DioException catch (error) {
      debugPrint(error.message);
    }
  }

  @override
  Future getHead(String path) async {
    try {
      final response = await client.head(
        path,
      );
      return response;
    } on DioException catch (error) {
      debugPrint(error.message);
    }
  }
}
