import 'package:dio/dio.dart';

class DioHelper {
  static Dio? dio;

  static init() async {
    dio = Dio(
      await BaseOptions(
        followRedirects: true,
        baseUrl: 'http://ejaratcomapi.oneit.website/api/Property/Add',
        receiveDataWhenStatusError: true,
        headers: {
          'Content-Type': 'application/json',
        },
      ),
    );
  }

  static Future<Response> getData(
      {required String url, dynamic query, dynamic data}) async {


    return await dio!.get(url,
        queryParameters: query,
        data: data,
        options: Options(headers: {
          // 'authorization': token,
        }));
  }

  static Future<Response> postData(
      {required String url, dynamic query, dynamic data}) async {

    return await dio!.post(url,
        queryParameters: query,
        data: data,
        options: Options(headers: {
          // 'authorization': token,
        }));
  }
}
