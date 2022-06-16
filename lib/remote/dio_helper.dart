import 'package:dio/dio.dart';

import '../end_points.dart';
import '../cache_helper.dart';

class DioHelper
{
  static late Dio dio;

  static void init()
  {
  dio=Dio(
    BaseOptions(
      baseUrl: '${url}/api',
      receiveDataWhenStatusError: true,

    ),
  );

  }
  static Future<Response> getData ({
    String ? token,
    required String url,


  })async {
    dio.options.headers=
    {

      'Content-Type':'application/json',
      'Accept':'application/json',
    };

return await dio.get(url);  }

static Future<Response> postData ({
  required String url,
  required Map<String,dynamic> data,
  String ? token,

})async
{

    dio.options.headers=
    {
       'Content-Type':'application/json',
       'Accept':'application/json',
       //'Authorization':'Bearer ${cacheHelper.getData(key: 'token')}'
    };

  return await dio.post(
      url,
    data: data,

  );
}
  static Future<Response> DeletData ({
    required String url,
    String ? token,

  })async
  {
    dio.options.headers =
    {
      'Content-Type': 'application/json',
      'Accept': 'application/json',
      'Authorization':'Bearer ${cacheHelper.getData(key: 'token')}'
    };

    return dio.delete(url);
  }
  static Future<Response> putData ({
    required String url,
    required Map<String,dynamic> data,
    String ? token,

  })async
  {

    dio.options.headers=
    {
      'Content-Type':'application/json',
      'Accept':'application/json',
      'Authorization':'Bearer ${cacheHelper.getData(key: 'token')}'
    };

    return await dio.put(
      url,
      data: data,

    );
  }
}