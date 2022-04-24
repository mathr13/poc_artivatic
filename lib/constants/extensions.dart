import 'package:flutter/material.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';
import 'package:get/get.dart';
import 'package:modal_progress_hud_nsn/modal_progress_hud_nsn.dart';
import 'package:poc_artivatic/constants/colours.dart';

extension PaddedWidget on Widget {
  Widget withPadding(EdgeInsets padding) {
    return Padding(
      padding: padding,
      child: this,
    );
  }
}

extension OpaqueWidget on Widget {
  Widget withOpacity(double opacity) {
    return Opacity(
      opacity: opacity,
      child: this,
    );
  }
}

extension TappableWidget on Widget {
  Widget onTap(Function() onPressed) {
    return GestureDetector(
      child: this,
      onTap: onPressed,
    );
  }
}

extension ObservableWidget on Widget {
  Widget withObserver() => Obx(() => this);
}

extension ProgressIndicator on Widget {
  ModalProgressHUD withProgressIndicator(bool showIndicator) {
    Widget progressIndicator = SpinKitFadingFour(
      color: Colours.primaryText,
    );
    return ModalProgressHUD(
      progressIndicator: progressIndicator,
      inAsyncCall: showIndicator,
      color: Colours.primaryBackground,
      child: this
    );
  }
}