import 'package:dio/dio.dart';
import 'package:retrofit/retrofit.dart';

import '../../models/model_values.dart';
import '../end_points.dart';

part 'item_rest_client.g.dart';

@RestApi()
abstract class ItemRestClient {

  factory ItemRestClient(Dio dio) = _ItemRestClient;

  @GET(EndPoints.fetchItems)
  Future<AboutList> getItems();

}