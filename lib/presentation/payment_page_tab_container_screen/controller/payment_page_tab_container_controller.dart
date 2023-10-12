import 'package:sahil_s_application2/core/app_export.dart';import 'package:sahil_s_application2/presentation/payment_page_tab_container_screen/models/payment_page_tab_container_model.dart';import 'package:flutter/material.dart';/// A controller class for the PaymentPageTabContainerScreen.
///
/// This class manages the state of the PaymentPageTabContainerScreen, including the
/// current paymentPageTabContainerModelObj
class PaymentPageTabContainerController extends GetxController with  GetSingleTickerProviderStateMixin {Rx<PaymentPageTabContainerModel> paymentPageTabContainerModelObj = PaymentPageTabContainerModel().obs;

late TabController tabviewController = Get.put(TabController(vsync: this, length: 4));

 }
