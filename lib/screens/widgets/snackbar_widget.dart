import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../constants/style_values.dart';

class Snackbars {

  static GetSnackBar successSnackbarDark(String message) {
    return GetSnackBar(
      margin: Paddings.padding1,
      backgroundColor: Colours.successColour,
      borderRadius: 8,
      messageText: Row(
        children: [
          Container(
            width: 24,
            height: 24,
            child: const Icon(
              Icons.done,
              color: Colours.messageColour,
              size: 12,
            ),
            decoration: BoxDecoration(
              border: Border.all(color: Colours.messageColour),
              shape: BoxShape.circle,
            ),
          ),
          const SizedBox(
            width: 12,
          ),
          Expanded(
            child: Text(
              message,
              style: TextStyles.messageText1,
            ),
          ),
        ],
      ),
      duration: DelayedDuration.primaryDelay,
      animationDuration: DelayedDuration.secondaryDelay,
    );
  }

  static GetSnackBar errorSnackbarDark(String message) {
    return GetSnackBar(
      margin: Paddings.padding1,
      backgroundColor: Colours.errorColour,
      borderRadius: 8,
      messageText: Text(
        message,
        style: TextStyles.messageText1,
      ),
      duration: DelayedDuration.primaryDelay,
      animationDuration: DelayedDuration.secondaryDelay,
    );
  }
}
