import 'package:dartz/dartz.dart';
import 'package:get/get.dart';

import '../injector.dart';
import '../models/model_values.dart';
import '../repositories/item_repository.dart';
import '../screens/widgets/snackbar_widget.dart';
import '../services/error/failure.dart';

class ItemController extends GetxController {

  AboutList? aboutItems;
  var showProgressIndicator = false.obs;

  fetchItems() async {
    aboutItems?.items.clear();
    showProgressIndicator.value = true;
    Either<Failure, AboutList> response = await getIt.get<ItemRepository>().getItems();
    response.fold((l) => Get.showSnackbar(Snackbars.errorSnackbarDark("something went wrong")), (r) => aboutItems = r);
    showProgressIndicator.value = false;
  }

}