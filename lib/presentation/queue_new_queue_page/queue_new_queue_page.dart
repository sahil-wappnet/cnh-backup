import 'controller/queue_new_queue_controller.dart';
import 'models/queue_new_queue_model.dart';
import 'package:flutter/material.dart';
import 'package:sahil_s_application2/core/app_export.dart';
import 'package:sahil_s_application2/widgets/custom_elevated_button.dart';
import 'package:sahil_s_application2/widgets/custom_text_form_field.dart';

class QueueNewQueuePage extends StatelessWidget {
  QueueNewQueuePage({Key? key})
      : super(
          key: key,
        );

  QueueNewQueueController controller =
      Get.put(QueueNewQueueController(QueueNewQueueModel().obs));

  @override
  Widget build(BuildContext context) {
    mediaQueryData = MediaQuery.of(context);

    return SafeArea(
      child: Scaffold(
        resizeToAvoidBottomInset: false,
        body: SizedBox(
          width: mediaQueryData.size.width,
          child: SingleChildScrollView(
            child: Column(
              children: [
                Padding(
                  padding: EdgeInsets.only(
                    left: 16.h,
                    top: 28.v,
                    right: 16.h,
                  ),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        "lbl_queue_title".tr,
                        style: theme.textTheme.bodySmall,
                      ),
                      CustomTextFormField(
                        controller: controller.queuetitlevalueController,
                        margin: EdgeInsets.only(
                          top: 9.v,
                          right: 8.h,
                        ),
                        hintText: "lbl_hospital_queue".tr,
                      ),
                      SizedBox(height: 15.v),
                      Text(
                        "msg_average_time_in".tr,
                        style: theme.textTheme.bodySmall,
                      ),
                      CustomTextFormField(
                        controller: controller.timeController,
                        margin: EdgeInsets.only(
                          top: 8.v,
                          right: 8.h,
                        ),
                        hintText: "lbl_20_min".tr,
                        textInputAction: TextInputAction.done,
                      ),
                      Spacer(),
                      CustomElevatedButton(
                        text: "lbl_create_queue".tr,
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
