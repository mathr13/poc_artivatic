import 'package:dio/dio.dart';
import 'package:pretty_dio_logger/pretty_dio_logger.dart';

import 'rest/item_rest_client.dart';

class APIHelper {
  late Dio dio;
  APIHelper() {
    dio = Dio()
      ..options = BaseOptions(
        headers: {}
      );
    dio.interceptors.add(
      PrettyDioLogger(
        requestHeader: true,
        requestBody: true,
        request: true,
        responseBody: true,
        compact: false,
      )
    );
  }

  ItemRestClient getDioItemClient() => ItemRestClient(dio);
}