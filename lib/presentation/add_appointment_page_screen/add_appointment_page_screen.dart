import 'controller/add_appointment_page_controller.dart';
import 'package:flutter/material.dart';
import 'package:sahil_s_application2/core/app_export.dart';

// ignore_for_file: must_be_immutable
class AddAppointmentPageScreen extends GetWidget<AddAppointmentPageController> {
  const AddAppointmentPageScreen({Key? key})
      : super(
          key: key,
        );

  @override
  Widget build(BuildContext context) {
    mediaQueryData = MediaQuery.of(context);

    return SafeArea(
      child: Scaffold(
        body: SizedBox(
          height: 920.v,
          width: double.maxFinite,
          child: SingleChildScrollView(
            child: SizedBox(
              height: 920.v,
              width: double.maxFinite,
            ),
          ),
        ),
      ),
    );
  }
}
