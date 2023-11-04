import 'package:dio/dio.dart';
import 'package:task/constants/failure.dart';

class DioHelper {
  static String baseUrl = 'https://jsonplaceholder.typicode.com/';
  static final Dio _dio = Dio(BaseOptions(
    baseUrl: baseUrl,
    receiveDataWhenStatusError: true,
  ));

  static Future<dynamic> getData(
      {required String endPoint, Map<String, dynamic>? data}) {
    return _dio.get(endPoint).then((response) {
      if (response.statusCode == 200) {
        return response.data;
      } else {
        return DioException(
            requestOptions: RequestOptions(path: baseUrl),
            response: response,
            type: DioExceptionType.connectionError);
      }
    }).catchError((error) {
      if (error is DioException) {
        return ApiException().getExceptionMessage(error);
      } else {
        return 'Unexpected Error, Please try again!';
      }
    });
  }
}
