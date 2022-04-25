import 'package:dartz/dartz.dart';

import '../models/model_values.dart';
import '../services/error/failure.dart';
import '../services/rest/item_rest_client.dart';

abstract class ItemRepository {
  Future<Either<Failure, AboutList>> getItems();
}

class ItemRepositoryImpl implements ItemRepository {

  final ItemRestClient client;

  ItemRepositoryImpl(this.client);

  @override
  Future<Either<Failure, AboutList>> getItems() async {
    try {
      var response = await client.getItems();
      return Right(response);
    } catch (e) {
      return Left(Failure.fromServerError(e));
    }
  }
}