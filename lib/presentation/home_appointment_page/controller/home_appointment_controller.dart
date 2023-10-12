import 'package:sahil_s_application2/core/app_export.dart';import 'package:sahil_s_application2/presentation/home_appointment_page/models/home_appointment_model.dart';import 'package:flutter/material.dart';/// A controller class for the HomeAppointmentPage.
///
/// This class manages the state of the HomeAppointmentPage, including the
/// current homeAppointmentModelObj
class HomeAppointmentController extends GetxController {HomeAppointmentController(this.homeAppointmentModelObj);

TextEditingController arrowrightController = TextEditingController();

Rx<HomeAppointmentModel> homeAppointmentModelObj;

Rx<int> sliderIndex = 0.obs;

@override void onClose() { super.onClose(); arrowrightController.dispose(); } 
 }
