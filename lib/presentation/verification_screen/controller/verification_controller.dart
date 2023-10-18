import 'dart:async';
import 'package:sahil_s_application2/core/app_export.dart';
import 'package:sahil_s_application2/presentation/verification_screen/models/verification_model.dart';
import 'package:sms_autofill/sms_autofill.dart';
import 'package:flutter/material.dart';

class VerificationController extends GetxController with CodeAutoFill {
  Rx<TextEditingController> otpController = TextEditingController().obs;

  Rx<VerificationModel> verificationModelObj = VerificationModel().obs;
  int start = 60;
  Timer? timer;
  @override
  void codeUpdated() {
    otpController.value.text = code ?? '';
  }

  @override
  void onInit() {
    super.onInit();
    listenForCode();
    const oneSec = Duration(seconds: 1);
    timer = Timer.periodic(oneSec, (timer) {
      if (start == 0) {
        timer.cancel();
      } else {
        start--;
      }
      update();
    });
  }

  void resentOtpTimer() {
    if (start == 0) {
      start = 60;
      const oneSec = Duration(seconds: 1);
      timer = Timer.periodic(oneSec, (timer) {
        if (start == 0) {
          timer.cancel();
        } else {
          start--;
        }
        update();
      });
    }
  }
}
