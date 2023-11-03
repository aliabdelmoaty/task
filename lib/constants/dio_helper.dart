import 'package:dio/dio.dart';

class DioHelper {
  static final Dio _dio = Dio(BaseOptions(
    baseUrl: 'https://jsonplaceholder.typicode.com/',
    receiveDataWhenStatusError: true,
  ));
  static Future<dynamic> getData({
    required String endPoint,
    Map<String, dynamic>? data,
  }) async {
    var response = await _dio.get(endPoint);

    return response.data;
  }
}
