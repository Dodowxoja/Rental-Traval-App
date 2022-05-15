import 'package:dio/dio.dart';

class GetRequestService {
  static dynamic response;
  static Future<dynamic> getDataRequest() async {
    try {
      Response res = await Dio().get('');
      response = res.data;
    } catch (e) {
      response = "Internet error";
    }
    return response;
  }
}
