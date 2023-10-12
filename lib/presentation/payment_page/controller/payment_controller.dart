import 'package:sahil_s_application2/core/app_export.dart';import 'package:sahil_s_application2/presentation/payment_page/models/payment_model.dart';import 'package:flutter/material.dart';/// A controller class for the PaymentPage.
///
/// This class manages the state of the PaymentPage, including the
/// current paymentModelObj
class PaymentController extends GetxController {PaymentController(this.paymentModelObj);

TextEditingController expirydateController = TextEditingController();

TextEditingController yearController = TextEditingController();

TextEditingController cvvController = TextEditingController();

Rx<PaymentModel> paymentModelObj;

Rx<int> sliderIndex = 0.obs;

Rx<bool> englishName = false.obs;

@override void onClose() { super.onClose(); expirydateController.dispose(); yearController.dispose(); cvvController.dispose(); } 
 }
