import 'package:dio/dio.dart';

import '../end_points.dart';
import '../cache_helper.dart';

class Diohelper {
  static late Dio dioo;

  static void iniit() {
    dioo = Dio(
      BaseOptions(
        baseUrl: '${url}/api',
        receiveDataWhenStatusError: true,

      ),
    );
  }



  static Future<Response> postData({
    required String url,
    required Map<String, dynamic> data,
    String ? token,

  }) async
  {
    dioo.options.headers =
    {
      'Content-Type': 'application/json',
      'Accept': 'application/json',
      'Authorization':'Bearer ${cacheHelper.getData(key: 'token')}'
    };

    return await dioo.post(
      url,
      data: data,

    );
  }

}