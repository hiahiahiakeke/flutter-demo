import 'package:dio/dio.dart';
import 'package:new_demo_flutter/module/config.dart';

Dio dio = new Dio();

class PubModule {
  static httpRequest(method, url) async {
    Response response;
    response = await dio.get(Config.baseUrl + url);
    return response;
  }
}
