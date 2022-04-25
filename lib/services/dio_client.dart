import 'package:dio/dio.dart';

import 'rest/item_rest_client.dart';

class APIHelper {
  late Dio dio;
  APIHelper() {
    dio = Dio()
      ..options = BaseOptions(
        headers: {}
      );
  }

  ItemRestClient getDioItemClient() => ItemRestClient(dio);
}