import 'package:dio/dio.dart';
import 'package:get/get.dart';

import '../../screens/widgets/snackbar_widget.dart';

class Failure {
  late String message;
  late int statusCode;
  dynamic response;

  Failure({required this.message, required this.response, required this.statusCode});

  Failure.fromServerError(dynamic error) {
    switch (error.runtimeType) {
      case DioError:
        try {
          final res = (error as DioError).response;
          statusCode = res?.statusCode ?? 0;
          message = res?.data['message'] ?? res?.data['error_messages'][0] ?? "something went wrong";
        } catch (e) {
          message = "something went wrong";
          if (message == "No Internet Connection") statusCode = 101;
        }
        Get.showSnackbar(Snackbars.errorSnackbarDark(message));
        break;
      default:
        message = "Unknown Error";
    }
  }
}
