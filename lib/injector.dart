import 'package:get/get.dart';
import 'package:get_it/get_it.dart';
import 'package:poc_artivatic/repositories/item_repository.dart';

import 'controllers/items_controller.dart';
import 'services/dio_client.dart';
import 'services/rest/item_rest_client.dart';

var getIt = GetIt.I;

inject() {

  getIt.registerLazySingleton<ItemRepository>(() => ItemRepositoryImpl(getIt()));
  getIt.registerLazySingleton<ItemRestClient>(() => APIHelper().getDioItemClient());
  Get.put(ItemController());

}